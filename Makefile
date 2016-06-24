# Kerkerkruip makefile
# But one which would work for other projects too

# Some rules adapted from https://github.com/alerque/stack-verse-mapper/blob/master/Makefile
# (The only other makefile experience I've had)

# Default to running multiple jobs
JOBS := $(shell nproc 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 1)
MAKEFLAGS = "-j $(JOBS)"

# Location of the project so we don't cross-wire relative paths.
BASE := $(shell cd "$(shell dirname $(lastword $(MAKEFILE_LIST)))/" && pwd)

SHELL = /bin/bash -o pipefail

CURL = curl -L -s -S

# Mark which rules are not actually generating files
.PHONY: all clean deploy setup

all: setup

clean:
	$(RM) %.gblorb *.zip
	$(RM) -r i7 Inform

# Setup the Inform 7 environment we need
INFORM_ENV = i7 Inform/Extensions
setup: $(INFORM_ENV)

# Download and install Inform 7
i7:
	$(CURL) -O http://inform7.com/download/content/6M62/I7_6M62_Linux_all.tar.gz
	tar -xzf I7_6M62_Linux_all.tar.gz
	cd inform7-6M62 && ./install-inform7.sh --prefix ../i7
	rm -r I7_6M62_Linux_all.tar.gz inform7-6M62

# Download the extensions we need, pretending ~/Inform is in this directory
Inform/Extensions:
	mkdir -p Inform/Extensions
	$(CURL) -O https://github.com/i7/extensions/archive/master.zip
	unzip -o -q master.zip
	cp -R extensions-master/. Inform/Extensions/
	$(CURL) -o "Inform/Extensions/Aaron Reed/Numbered Disambiguation Choices.i7x" "http://www.emshort.com/pl/payloads/Aaron%20Reed/Numbered%20Disambiguation%20Choices.i7x"
	rm -r extensions-master master.zip

# Build (optinally release) the story
RELEASE ?= false
ifeq ($(RELEASE), false)
    NI_OPTS =
    INFORM6_OPTS = -E2w~SDG
else
    NI_OPTS = --release
    INFORM6_OPTS = -E2w~S~DG
endif

%.gblorb: $(INFORM_ENV)
	export HOME=$(BASE); ./i7/libexec/ni --format=ulx --internal ./i7/share/inform7/Internal --noprogress --project "$*.inform" $(NI_OPTS) | grep -Ev "ve also read"
	./i7/libexec/inform6 $(INFORM6_OPTS) "$*.inform/Build/auto.inf" -o "$*.inform/Build/output.ulx"
	./i7/libexec/cBlorb -unix "$*.inform/Release.blurb" "$*.materials/Release/$@"
	cp "$*.materials/Release/$@" "$@"

# Prepare a zip for distribution
%.zip: %.gblorb
	cd "$*.materials/Release/" && zip "$@" *
	mv "$*.materials/Release/$@" .

# Deploy a zip to the Kerkerkruip downloads server
deploy: Kerkerkruip.zip
	lftp -c "open -u ${KUSER},dummy sftp://${KSERVER}; put Kerkerkruip.zip -o downloads.kerkerkruip.org/kerkerkruip-git.zip"
