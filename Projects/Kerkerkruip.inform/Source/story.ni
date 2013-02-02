"Kerkerkruip - Release 8 - BETA" by Victor Gijsbers

The story headline is "An IF roguelike".
The story genre is "dungeon crawl".
The release number is 8.
[Release along with cover art.]

	
Include version 4/121111 of Menus by Emily Short. [Get this at https://github.com/i7/extensions]
Include Basic Screen Effects by Emily Short. 
Include Numbered Disambiguation Choices by Aaron Reed.
Include Glulx Entry Points by Emily Short.
Include Dynamic Objects by Jesse McGrew.
Include Epistemology by Eric Eve. [Doesn't work with moving people.]
[Include Kerkerkruip Glimmr Additions by Erik Temple.]
Include Glulx Status Window Control by Erik Temple.[Not needed when the Glimmr additions are included]
Include Flexible Windows by Jon Ingold.
[Testing with Glimmr installed will be slower, due to compilation and graphics, so commits to story.ni would generally best be made with it commented out. Be sure to comment Flexible Windows in instead!]

Every turn (this is the mark items as seen every turn rule): 
	repeat with item running through things that are enclosed by the location:
		if the item is not enclosed by an opaque closed container, now the item is seen.
		
Include Kerkerkruip Permadeath by Victor Gijsbers.
The binary file of save data is called "KerkerkruipSaves".

Use undo prevention.

Include version 4/121110 of Inform ATTACK by Victor Gijsbers.
[You can get the latest ATTACK at https://github.com/i7/ATTACK ]

Include Kerkerkruip Persistent Data by Victor Gijsbers.
Include Kerkerkruip Dungeon Generation by Victor Gijsbers.
Include Kerkerkruip Events by Victor Gijsbers.
Include Kerkerkruip ATTACK Additions by Victor Gijsbers.
Include Kerkerkruip Systems by Victor Gijsbers.
Include Kerkerkruip Systems - Hiding Smoke Ethereal by Victor Gijsbers.
Include Kerkerkruip Actions and UI by Victor Gijsbers.
Include Kerkerkruip Items by Victor Gijsbers.
Include Kerkerkruip Locations by Victor Gijsbers.
Include Kerkerkruip Scenery by Victor Gijsbers.
Include Kerkerkruip Monsters by Victor Gijsbers.
Include Kerkerkruip Events and Specials by Victor Gijsbers.
Include Kerkerkruip Ugly Special Cases by Victor Gijsbers.
Include Kerkerkruip Start and Finish by Victor Gijsbers.
Include Kerkerkruip Final Declarations by Victor Gijsbers.


Use MAX_PROP_TABLE_SIZE of 500000.
Use MAX_OBJ_PROP_COUNT of 256.
Use MAX_STATIC_DATA of 500000.
Use MAX_OBJECTS of 650.

The maximum score is 18. [1 + 1 + 2 + 2 + 3 + 4 + 5 = 18]
The notify score changes rule is not listed in any rulebook.

[This is for testing.]

Generation info is a truth state that varies. Generation info is [true]false.

[Last when play begins:
	increase mind score of the player by 40.]
	
[When play begins:
	copy scroll of ghoulification to player;
	copy scroll of teleportation to player;
	copy scroll of teleportation to player.]
	

Chapter - Flexible Windows relisting
[Kerkerkruip's when play begin rules don't fire until after the menu is cleared. This means that extension such as Flexible Windows that have critical startup code in when play begins need to be adjusted. Due to weaknesses in Inform's extension interactions, this has to be in story.ni rather than the Kerkerkruip Glimmr extension.]

The allocate rocks rule is not listed in the when play begins rules. The allocate rocks rule is listed before the show the title screen rule in the startup rules.
The initial hyperlink request rule is not listed in the when play begins rules. The initial hyperlink request rule is listed before the show the title screen rule in the startup rules.

Section - Relist rock validation rule (not for release)

The rock validation rule is not listed in the when play begins rules. The rock validation rule is listed before the show the title screen rule in the startup rules.


Chapter - Multiple windows test

Table of Common Color Values (continued)
glulx color value	assigned number
g-stats-color	15658734
g-inventory-color	14540253


The back-colour of the main-window is g-white.[For CocoaGlk]

The stats-window is a text-buffer g-window spawned by the main-window. The back-colour is g-stats-color. The measurement is 40. The position is g-placeright.

The stat-header-window is a text-buffer g-window spawned by the stats-window. The measurement is 1. The position is g-placeabove. The scale method is g-fixed-size. The back-colour is g-inventory-color.

The inventory-window is a text-buffer g-window spawned by the stats-window. The back-colour is g-stats-color. The measurement is 50. The position is g-placebelow.

The inventory-header-window is a text-buffer g-window spawned by the inventory-window. The measurement is 1. The position is g-placeabove. The scale method is g-fixed-size.  The back-colour is g-inventory-color.


Window-drawing rule for the stats-window (this is the construct stats window rule):
	move focus to stats-window, clearing the window;
	try asking status;
	return to main screen.
	
Window-drawing rule for the stat-header-window (this is the construct stat header window rule):
	move focus to stat-header-window, clearing the window;
	say "[bold type]Status[roman type]";
	return to main screen.
	
Window-drawing rule for the inventory-header-window (this is the construct inventory header window rule):
	move focus to inventory-header-window, clearing the window;
	say "[bold type]Inventory[roman type]";
	return to main screen.

Window-drawing rule for the inventory-window (this is the construct inventory window rule):
	move focus to inventory-window, clearing the window;
	try taking inventory;
	return to main screen.
	
Last when play begins:
	open the status window;
	open up the stats-window;
	open up the inventory-window;
	open up the stat-header-window;
	open up the inventory-header-window;
	
Last every turn rule:
	follow the window-drawing rules for the stats-window;
	follow the window-drawing rules for the inventory-window;

