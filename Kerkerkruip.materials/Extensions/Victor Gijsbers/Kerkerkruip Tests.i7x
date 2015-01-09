Kerkerkruip Tests by Victor Gijsbers begins here.

Use authorial modesty.

[ Tests for various things ]

Chapter - Phrases

To #ifdef DEBUG:
	(- #ifdef DEBUG; -).

To #endif DEBUG:
	(- #endif; -).

To #if DEBUG say (x - sayable value):
	#ifdef DEBUG;
	say x;
	#endif DEBUG;



Chapter - Requesting test objects (not for release)

[ Test objects are things which will be ensured that they are included in the dungeon. There is a console where you can specify them: type ~ in the main menu. ]

Section - Dungeon generation rules

An object can be randomly included, bannedobject, or testobject. An object is usually randomly included.

First resetting the map rule (this is the remove rarity from testobjects rule):
	repeat with item running through testobject rooms:
		now rarity of item is 0;
		now item is basic;
	repeat with item running through testobject things:
		now rarity of item is 0;
		now item is basic;

A placement possible rule (this is the don't place banned rooms rule):
	if considered room is bannedobject:
		rule fails;

A placement scoring rule (this is the testobject placement scoring rule):
	if considered room is testobject:
		increase current room score by 100;

Last creating the map rule (this is the place all secret testobject rooms rule):
	while there is a secretly placeable not placed testobject room (called place):
		put place in a near location;

A map approval rule (this is the reject map if not all testobject rooms are placed rule):
	if a testobject room is not placed:
		if generation info is true, say "Required for testing, but not placed: [The list of not placed testobject rooms]. ";
		rule fails.

A monster placement possible rule (this is the prefer testobject monsters rule):
	if considered monster is bannedobject:
		rule fails;
	repeat with guy running through testobject off-stage monsters:
		if level of guy is global monster level:
			if considered monster is not testobject:
				rule fails.
		
A monster placement scoring rule (this is the testobject monster scoring rule):
	if considered monster is testobject:
		increase current monster score by 100.

First treasure placement rule (this is the remove bannedobject treasures rule):
	Repeat with item running through not non-treasure things:
		if item is bannedobject, now item is non-treasure.

Last treasure placement rule (this is the place non-person testobjects rule):
	if generation info is true, print generation message "    Placing testobjects...";
	now all off-stage testobject things are in the Entrance Hall;

First dungeon interest rule (this is the ban extra scenery rule):
	Now every bannedobject thing is not extra.
		
Section - The test object file

The File of Test Objects is called "KerkerkruipTestObjects".

Table of Requested Test Objects
Object name (indexed text)
with 100 blank rows

Before showing the title screen (this is the load the file of test objects rule):
	if File of Test Objects exists:
		read File of Test Objects into the Table of Requested Test Objects;

After showing the title screen (this is the mark test objects from file rule):
	let test text be an indexed text;
	repeat through the Table of Requested Test Objects:
		repeat with R running through rooms:
			now test text is "[printed name of R]";
			if the Object name entry is test text:
				now R is testobject;
				break;
		repeat with R running through things:
			now test text is "[printed name of R]";
			if the Object name entry is test text:
				if R is cloneable:
					let new toy be a new object cloned from R;
					now new toy is testobject;
					now new toy is in the Entrance Hall;
				otherwise:
					now R is testobject;
				break;

Last when play begins rule (this is the identify test object scrolls rule):
	repeat with T running through testobject scrolls in the Entrance Hall:
		identify T;

Section - The test object console

The early in turn sequence flag is a truth state variable. The early in turn sequence flag variable translates into I6 as "EarlyInTurnSequence".
[The test object console is a truth state variable.

Definition: a number is console:
	if it is 96, yes;
	if it is 126, yes;
	no.
Menu command console:
	follow the show the console rule;
	redraw the menu;

[ By utilising the parse command rule we can use the parser without actually running any actions. Convenient! ]

Adding is an action applying to one visible thing.
Understand "add [any thing]" as adding while the test object console is true.
Understand "add [any room]" as adding while the test object console is true.

Deleting is an action applying to one visible thing.
Understand "delete [any thing]" as deleting while the test object console is true.
Understand "delete [any room]" as deleting while the test object console is true.
Understand "del [any thing]" as deleting while the test object console is true.
Understand "del [any room]" as deleting while the test object console is true.

Emptying is an action applying to nothing.
Understand "empty" as emptying while the test object console is true.

This is the show the console rule:
	open up the status-window;
	now the early in turn sequence flag is true;
	now the test object console is true;
	while 1 is 1:
		clear the main-window;
		say "[bold type]The following things will be forcibly included in dungeons:[roman type][paragraph break]";
		repeat through the Table of Requested Test Objects:
			say "[the Object name entry][line break]";
		say "[line break]Commands: ADD THING, DELETE THING, EMPTY (the whole list), QUIT[paragraph break]";
		follow the parse command rule;
		set the parser variables manually;
		if quitting the game:
			break;
		if emptying:
			blank out the whole of Table of Requested Test Objects;
		if adding:
			choose a blank row in Table of Requested Test Objects;
			now the Object name entry is the printed name of the noun;
		if deleting:
			repeat through the Table of Requested Test Objects:
				if the Object name entry is the printed name of the noun:
					blank out the whole row;
					break;
	write File of Test Objects from Table of Requested Test Objects;
	now the early in turn sequence flag is false;
	now the test object console is false;
	shut down the status-window;

[ Unfortunately these variables are set in the Generate Action Rule. Not to worry, we can set them ourselves! ]
To set the parser variables manually:
	(- action = parser_results-->ACTION_PRES; noun = parser_results-->INP1_PRES; -).

Rule for constructing the status line while the test object console is true:
	fill status bar with Table of Console Status;
	rule succeeds;

Table of Console Status
left	central	right
""	"The Kerkerkruip console"	""]





Chapter - Tests (not for release)



Section - Cheats - Plunk, plonk, smite, rambo, meatboy, butterfly, reduce, sneak

Plunking is an action applying to one thing.
Understand "plunk [something]" as plunking.

Carry out plunking:
	say "You plunk [the noun].";
	now the health of the noun is -5.

Plonking is an action applying to nothing.
Understand "plonk" as plonking.

Carry out plonking:
	say "These fools are no match for you!";
	repeat with X running through all alive persons enclosed by the location:
		if the faction of the player hates the faction of X:
			now the health of X is -5.


Smiting is an action applying to one thing.
Understand "smite [something]" as smiting.

A person can be smiter.

A blindness rule (this is the smiting is blind rule):
	if test subject is smiter:
		rule succeeds.

Carry out an actor smiting:
	Now the actor is smiter;
	Try the actor hitting the noun;
	Now the actor is not smiter;

Attack modifier rule (this is the smiting guarantees hit rule):
	If the global attacker is smiter:
		say " + 100 (smiting)[run paragraph on]";
		increase the attack strength by 100;

Last general damage multiplier rule (this is the smiting overrides damage multiplier rule):
	if damage-by-hitting is true:
		if the global attacker is smiter:
			say " (reset to 100 by smiting)[run paragraph on]";
			now total damage is 100;

Ramboing is an action applying to nothing. Understand "rambo" as ramboing.

Carry out ramboing:
	say "RAMBO!";
	now permanent health of the player is 100;
	now health of the player is 100;
	now melee of the player is 100;
	now damage die of gilded rapier is 100.

Meatboying is an action applying to nothing. Understand "meatboy" as meatboying.

Carry out meatboying:
	say "Meatboy!";
	now health of the player is 1000.

Reducing is an action applying to one thing. Understand "reduce [person]" as reducing.

Carry out reducing:
	say "Set to 1 HP.";
	now health of the noun is 1.

Butterflying is an action applying to nothing. Understand "butterfly" as butterflying.

Carry out butterflying:
	say "Float like a butterfly, sting like a bee! No one can hit you now.";
	now defence of the player is 100;

Winning is an action applying to nothing. Understand "win" as winning.

Carry out winning:
	say "Sure.";
	now health of Malygris is -2.

Restartnowing is an action applying to nothing. Understand "restart now" as restartnowing.

Carry out restartnowing:
	restart immediately.

To restart immediately: 
	(- @restart; -).

Sneaking is an action applying to nothing. Understand "sneak" as sneaking.

Carry out sneaking:
	now traveling sneakily is true;
	if the player wears a cloak (called the impediment) that is not the fuligin cloak:
		try taking off the impediment;
	force the fuligin cloak to work.
	
Report sneaking:
	say "You are now hidden in the fuligin cloak, and you have a +100 hiding bonus. To cancel the bonus, remove the cloak."
	

Section - Granting powers

Cheatgranting is an action applying to one object.

Understand "grantme [any power]" as cheatgranting.

Carry out cheatgranting:
	now the noun is granted;
	say "You have been granted [the noun].".

Section - Testing Person IDs

Last when play begins (this is the check person IDs rule):
	Let the available id be 1;
	Let id-needed be false;
	repeat with X running through npc people:
		if X is a god:
			next;
		if the ID of X is 0:
			say "[X] does not have an ID.[line break]";
			now id-needed is true;
		otherwise:
			repeat with Y running through npc people:
				if the id of Y is the available id:
					increase the available id by 1;
				if X is not Y and the ID of X is the ID of Y:
					say "[X] has the same ID as [Y].[line break]";
					now id-needed is true;
	if id-needed is true:
		say "ID [available id] is available."


Section - Testing IDs

Table of Test Monster IDs
Brute		Tag
(a person)		(a number)
with 100 blank rows

MonsterIDing is an action applying to nothing. Understand "TestID" as monsterIDing.

Carry out monsterIDing:
	repeat with guy running through persons:
		choose a blank row in Table of Test Monster IDs;
		now brute entry is guy;
		now tag entry is ID of guy;
	sort Table of Test Monster IDs in tag order;
	repeat through Table of Test Monster IDs:
		say "[brute entry]: [tag entry][line break]".



Section - Showing readied weapons

Testreadying is an action applying to nothing. Understand "testready" as testreadying.

Carry out testreadying:
	repeat with guy running through not off-stage persons:
		let item be a random readied weapon enclosed by guy;
		say "[guy] - [item][line break]".

Section - Changing Story Tense and Viewpoint

Viewpoint-changing is an action out of world applying to one narrative viewpoint. Understand "viewpoint [a narrative viewpoint]" as viewpoint-changing.

Carry out viewpoint-changing:
	now the story viewpoint is the narrative viewpoint understood;
	say "[bracket]Story viewpoint is now [the story viewpoint].[close bracket]";
	
Understand "viewpoint [text]" as a mistake ("Viewpoint can only be set to one of the following: [the list of narrative viewpoints].")

Tense-changing is an action out of world applying to one grammatical tense. Understand "tense [a grammatical tense]" as tense-changing.

Understand "tense [text]" as a mistake ("Tense can only be set to one of the following: [the list of grammatical tenses].")

Carry out tense-changing:
	now the story tense is the grammatical tense understood;
	say "[bracket]Story tense is now [the story tense].[close bracket]";
	
Section - Test Battles

battling is an action applying to one visible thing. Understand "battle [any person]" as battling.

Carry out battling:
	revive the noun in Test Arena;
	Repeat with guy running through people who accompany the noun:
		[not sure if this is quite right]
		now the faction of guy is arena-faction;
	try challenging the noun in Test Arena.

After arena arrival of Test Arena:
	Repeat with guy running through people in the staging area of Test Arena:
		move guy to the location;
		say "[The guy] appears, ready to fight for [faction of the guy]."
		
recruiting is an action applying to one visible thing. Understand "recruit [any person]" as recruiting.

Carry out recruiting:
	revive the noun in the location;
	Repeat with guy running through people who accompany the noun:
		now the guy is friendly;
		now the original faction of guy is friendly; [slightly dangerous hack to keep Isra and Fell on our side]
	Now the noun is friendly;
	Now the original faction of the noun is friendly;

Report recruiting:
	say "[The noun] appears, and joins the friendly faction.";
	
fight-testing is an action applying to two visible things. Understand "fighttest [any person] vs [any person]" as fight-testing.

The test-champion is a person variable.
The test-challenger is a person variable.
The fight target is a number variable.
The champion's initial defeats is a number variable.
The challenger's initial defeats is a number variable.

Carry out fight-testing:
	now the test-champion is the noun;
	now the test-challenger is the second noun;
	now the fight target is 100;
	try sneaking;
	try battling the test-challenger;
	try recruiting the test-champion;
	now the champion's initial defeats is the died count of the test-champion;
	now challenger's initial defeats is the died count of the test-challenger;
	
To decide what number is the champion's defeats:
	decide on the died count of the test-champion - the champion's initial defeats.
	
To decide what number is the challenger's defeats:
	decide on the died count of the test-challenger - the challenger's initial defeats.
	
Report fight-testing:
	say "[italic type]When it came time to fight I thought, 'I'll just step aside'[line break] - The Flaming Lips, 'Fight Test'[roman type][paragraph break]"
	
For taking a player action when the fight target is at least 1 (this is the let test combatants fight rule):
	now the health of the player is 1000;
	if the combat status is not peace and (the number of friendly npc people in the location is at least 1):
		[continue the fight]
		rule succeeds;
	Let the total kills be the champion's defeats + the challenger's defeats;
	if the total kills is at least the fight target:
		say "In [the total kills] fights, [the test-champion] was killed [the champion's defeats] times and [the test-challenger] was killed [the challenger's defeats] times.";
		now the fight target is 0;
		make no decision;
	Repeat with guy running through npc people in Test Arena:
		say "Removing [the guy] from Test Arena.";
		extract the guy from combat;
		remove the guy from play;
	try battling the test-challenger;
	try recruiting the test-champion;

The let test combatants fight rule is listed before the test step player action rule in the for taking a player action rulebook.

Kerkerkruip Tests ends here.