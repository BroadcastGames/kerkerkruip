Kerkerkruip Monsters by Victor Gijsbers begins here.

Use authorial modesty.






Chapter - Level 1 - Swarm of Daggers

Section - Definitions

The swarm of daggers is a monster. "A swarm of small daggers is flying through the air like a flock of birds, their sharp points eagerly seeking your flesh." The level of swarm of daggers is 1.

The swarm of daggers is eyeless.
The material of the swarm of daggers is iron.
The swarm of daggers is emotionless.
The swarm of daggers is flyer.

The health of the swarm of daggers is 12.
The melee of the swarm of daggers is 3.
The defence of the swarm of daggers is 4.
The body score of the swarm of daggers is 6.
The mind score of the swarm of daggers is 3.
The spirit score of the swarm of daggers is 6. 

When play begins:
	let X be a random natural weapon part of the swarm of daggers;
	now damage die of X is 4;
	now dodgability of X is 3;
	now passive parry max of X is 0;
	now active parry max of X is 0;
	now the printed name of X is "sharp points".

The description of the swarm of daggers is "Animated by some dark magic, these daggers purposefully seek to undo you.".

An AI action selection rule for the swarm of daggers (this is the daggers do not concentrate rule):
	choose row with an Option of the action of the swarm of daggers concentrating in the Table of AI Action Options;
	decrease the Action Weight entry by 100.

Section - Scattering

Dagger-scattered is a truth state that varies. Dagger-scattered is false.

An aftereffects rule (this is the scatter the daggers rule):
	if the global defender is the swarm of daggers and the attack damage is greater than 0 and the swarm of daggers is not dead:
		say "The impact of the blow [italic type]scatters[roman type] the swarm of daggers. They will need to spend one action regrouping themselves.";
		repeat through Table of Delayed Actions:
			if the action entry is the action of the swarm of daggers hitting the player:
				blank out the whole row;		
		now dagger-scattered is true.

An AI action selection rule for the swarm of daggers (this is the daggers must wait if scattered rule):
	if dagger-scattered is true:
		choose row with an Option of the action of the swarm of daggers waiting in the Table of AI Action Options;
		now the Action Weight entry is 1000.

Check the swarm of daggers waiting (this is the daggers regroup rule):
	if dagger-scattered is true:
		now dagger-scattered is false;
		say "The swarm of daggers regroups." instead.


Section - Prose

Report an actor hitting the dead swarm of daggers:
	say "All life suddenly goes out of the daggers. For a moment they hang still in the air, but then the planet below pulls them inexorably downwards.";
	rule succeeds.

Report the swarm of daggers hitting a dead pc:
	say "You desperately attempt to fend off the flying daggers, but there are too many of them. One by one the daggers sink into your flesh, and your soul flees through a thousand mouths.";
	rule succeeds.

Report the swarm of daggers attacking:
	unless the noun is the actor:
		say "The swarm of daggers [one of]bears down upon[or]launches itself at[or]moves in to attack[at random] [the noun].";
	otherwise:
		say "The daggers start savagely attacking each other!";
	rule succeeds.

Report the swarm of daggers parrying:
	say "Several of the daggers float out to stop the attack.";
	rule succeeds.

Report the swarm of daggers dodging:
	say "The swarm of daggers attempts to outmaneuver the attack.";
	rule succeeds.

Report the swarm of daggers waiting when the swarm of daggers is insane:
	say "The daggers form [one of]a big heart, including the text 'WE LOVE YOU'[or]a screaming face[or]a cute pony[or]the letters 'REDRUM'[or]a hand giving the one finger salute[at random], then quickly go back to their original constellation.";
	rule succeeds.
	

Section - Power

The power of the daggers is a power. Swarm of daggers grants power of the daggers.
The power level of power of the daggers is 1.
The command text of power of the daggers is "pierce[if pierce-cooldown is not 0] ([pierce-cooldown])[end if]".

Absorbing power of the daggers:
	increase melee of the player by 2;
	increase inherent damage modifier of the player by 2;
	decrease defence of the player by 1;
	increase permanent health of the player by 6;
	say "As the daggers fall down, you feel the soul that animated them absorbed into your own body. You are sharp. You are deadly. ([bold type]Power of the daggers[roman type]: +2 attack, +1 damage, -1 defence, +6 health, and the [italic type]pierce[roman type] skill.)[paragraph break]".

Repelling power of the daggers:
	decrease melee of the player by 2;
	decrease inherent damage modifier of the player by 2;
	increase defence of the player by 1;
	decrease permanent health of the player by 6.

Status skill rule (this is the pierce status skill rule):
	if the power of daggers is granted:
		say "You can [bold type]pierce[roman type] an enemy, dealing extra damage if your attack hits. This ability has a cooldown. [italic type](Level 1)[roman type][line break][run paragraph on]";



Section - Piercing ability

Piercing is an action applying to one visible thing. Understand "pierce [thing]" as piercing.

Piercing is attacklike behaviour.

Does the player mean piercing the player: it is unlikely.
Does the player mean piercing an alive person: it is very likely.

A person can be at-pierce. A person is usually not at-pierce.

Pierce-cooldown is a number that varies. Pierce-cooldown is 0.

Every turn when main actor is the player:
	if pierce-cooldown is greater than 0:
		decrease pierce-cooldown by 1;
		if combat status is peace:
			now pierce-cooldown is 0.

Aftereffects rule (this is the remove at-pierce rule):
	now the global attacker is not at-pierce.

Check piercing:
	if power of daggers is not granted:
		take no time;
		say "You do not have that power." instead.

Check piercing:
	if pierce-cooldown is not 0:
		take no time;
		say "You must wait [pierce-cooldown] turn[unless pierce-cooldown is 1]s[end if] before you can use your piercing ability again." instead.

Check piercing:
	abide by the check attacking rules.

Carry out piercing:
	now the player is at-pierce;
	let n be the final spirit of the player divided by 3;
	let o be 12 minus n;
	now pierce-cooldown is o;
	try the actor attacking the noun instead.

A damage modifier rule (this is the more damage when piercing rule):
	if the global attacker is at-pierce:
		let n be the final body of the global attacker divided by 5;
		increase n by 2;
		if the numbers boolean is true, say " + [n] (piercing)[run paragraph on]";
		increase the attack damage by n.




		
		
		
		



Chapter - Level 1 - Blood Ape

Section - Definitions

A blood ape is a monster. "A [if the size of the blood ape is not medium][size of the blood ape] [end if]simian creature aggressively [if player is not hidden][one of]shows you its teeth[or]displays its strength[or]screams at you[at random][otherwise]paces through the room[end if]." Understand "monkey" and "gorilla" and "simian" as the blood ape.

The description of the blood ape is "It looks like a gorilla, except that is has an intensely red fur and is perhaps even more muscular. [if the blood ape is small]Thankfully, the ape is somewhat smaller than you are[otherwise if the blood ape is medium]The blood ape has grown to the proportion of a very broad-chested human[otherwise if the blood ape is large]The blood ape now stands taller than you, and its fists have grown bigger than your head[otherwise if the blood ape is huge]The massive blood ape towers above you, having grown to the size of an elephant[otherwise if the blood ape is gargantuan]The blood ape has grown to colossal proportions, hardly fitting in the room. You fear it could easily crush you[end if]."

The level of the blood ape is 1.
The blood ape is small.

The health of the blood ape is 8.
The melee of the blood ape is 0.
The defence of the blood ape is 8.

The body score of the blood ape is 4.
The mind score of the blood ape is 5.
The spirit score of the blood ape is 4. 

When play begins:
	let X be a random natural weapon part of the blood ape;
	now damage die of X is 6;
	now dodgability of X is 1;
	now passive parry max of X is 3;
	now active parry max of X is 0;
	now printed name of X is "ape's [size of blood ape] fists".

Aftereffects rule (this is the blood ape grows in size when hit rule):
	if the global attacker is the blood ape and the attack damage is greater than 0:
		if the blood ape is not gargantuan:
			now the blood ape is the size after the size of the blood ape;
			say "The ape immediately licks the blood of its enemy from its knuckles. Nourished by this substance, it grows to [bold type][size of the blood ape][roman type] size!";
			increase permanent health of blood ape by 3;
			increase health of blood ape by 3;
			increase body score of the blood ape by 1;
			if size of blood ape is large or size of blood ape is gargantuan:
				increase melee of blood ape by 1;
			let X be a random natural weapon part of the blood ape;
			if the blood ape is medium:
				now dodgability of X is 2;
				now passive parry max of X is 2;
			if the blood ape is large:
				now dodgability of X is 3;
				now passive parry max of X is 1;
			if the blood ape is huge:
				now dodgability of X is 4;
				now passive parry max of X is 0;
			if the blood ape is gargantuan:
				now dodgability of X is 5;
				now passive parry max of X is 0;
		otherwise:
			say "Sensing perhaps that it cannot grow further in its current confines, the ape does not lick of the blood.".
			


Section - Prose

Report an actor hitting the dead blood ape:
	say "[if the blood ape is small or the blood ape is medium]The blood ape topples over with a small grunt[otherwise]The blood ape crashes down with a huge smack[end if].";
	rule succeeds.

Report the blood ape hitting a dead pc:
	say "The blood ape pounds you into a pulp with its fists, then feasts on your body.";
	rule succeeds.

Report the blood ape attacking:
	unless the noun is the actor:
		say "The blood ape [one of]swings at [possessive of the noun] head[or]jumps at [the noun] with its fists ready to swing[at random].";
	otherwise:
		say "The blood ape swings its fists at its own head!";
	rule succeeds.

Report the blood ape parrying:
	say "The blood ape attempts to stop the attack with its hairy forearms.";
	rule succeeds.

Report the blood ape dodging:
	say "The blood ape tries to jump out of the way.";
	rule succeeds.
	
Report the blood ape waiting when the blood ape is insane:
	say "The blood ape maniacally thumps its chest.";
	rule succeeds.


Section - Power

[We assume that onle the power of the ape can change the size of the player. If this is ever changed, the code below needs to change as well! We'll also need to think about how these things interact.]

The power of the ape is a power. Blood ape grants power of the ape.
The power level of power of the ape is 1.

The maximum ape power is a size that varies.

The command text of power of the ape is "[if maximum ape power is not tiny and maximum ape power is not small and maximum ape power is not medium]ape power[end if]".

Absorbing power of the ape:
	now maximum ape power is size of the blood ape;
	let n be 0;
	let m be 1;
	if maximum ape power is small:
		now n is 2;
	if maximum ape power is medium:
		now n is 4;
	if maximum ape power is large:
		now n is 6;
	if maximum ape power is huge:
		now n is 8;
		now m is 2;
	if maximum ape power is gargantuan:
		now n is 10;
		now m is 2;
	increase permanent health of the player by n;
	increase melee of the player by m;
	increase defence of the player by 1;
	increase inherent damage modifier of the player by 1;
	say "The blood-hungry soul that animated the ape is absorbed into your own body. You are strong. You hunger for blood. ([bold type]Power of the ape[roman type]: +[m] attack, +1 defence, +[n] health; [if maximum ape power is not tiny and maximum ape power is not small and maximum ape power is not medium]by scoring hits, you may grow up to [maximum ape power] size[otherwise]the ape was too small to grant you any special powers[end if].)[paragraph break]";
	if maximum ape power is tiny or maximum ape power is small or maximum ape power is medium:
		now command text of power of the ape is "".

Repelling power of the ape:
	let n be 0;
	let m be 1;
	if the blood ape is small:
		now n is 2;
	if the blood ape is medium:
		now n is 4;
	if the blood ape is large:
		now n is 6;
	if the blood ape is huge:
		now n is 8;
		now m is 2;
	if the blood ape is gargantuan:
		now n is 10;
		now m is 2;
	decrease permanent health of the player by n;
	decrease melee of the player by m;
	decrease defence of the player by 1;
	decrease inherent damage modifier of the player by 1.
	
Aftereffects rule (this is the increase ape damage rule):
	if global attacker is the player and the attack damage is greater than 0:
		if power of the ape is granted:
			if size of the player < maximum ape power:
				update the combat status;
				if combat status is not peace:
					now the size of the player is the size after the size of the player;
					let n be 0;
					if health of the player < permanent health of the player:
						now n is permanent health of the player minus health of the player;
						let m be 1 + final body of the player / 3;
						if n is greater than m:
							now n is m;
						heal the player for n health;
					say "You grow to [bold type][size of the player][roman type] size[if n is not 0], regaining [n] health in the process[end if]!".

Status rule (this is the ape power damage status rule):
	if power of the ape is granted and player is not medium:
		say "[bold type]Power of the ape[roman type]: you are currently [size of the player].[line break][run paragraph on]".
		
Status skill rule (this is the ape power status skill rule):
	if power of the ape is granted:
		say "[if maximum ape power is not tiny and maximum ape power is not small and maximum ape power is not medium]Whenever you damage an enemy, you will grow -- up to [maximum ape power] size[otherwise]The ape was too small to give you a special power[end if]. [italic type](Level 1)[roman type][line break][run paragraph on]".
			
Every turn when the player is not medium (this is the revert back to normal rule):
	if combat status is peace:
		say "As the combat is over, you revert back to [bold type]medium size[roman type].";
		now the player is medium.








Chapter - Level 1 - Ravenous Armadillo

Section - Definitions

The ravenous armadillo is a monster. "A huge armadillo is here, searching for anything it can eat."

The level of ravenous armadillo is 1.
The difficulty level of ravenous armadillo is 1. [Too confusing for new players.]

The unlock level of the ravenous armadillo is 3.
The unlock text of the ravenous armadillo is "a monster that searches the dungeon for anything it can eat".

The description of ravenous armadillo is "As their name suggests, ravenous armadillos will eat anything. They may seem slow and easy to hit, but their tough scales ensures that they can shrug off most damage, and their bony tail club packs a considerable punch.".

The health of the ravenous armadillo is 10.
The melee of the ravenous armadillo is -2.
The defence of the ravenous armadillo is 5.

The body score of the ravenous armadillo is 6.
The mind score of the ravenous armadillo is 4.
The spirit score of the ravenous armadillo is 5. 

A damage modifier rule (this is the ravenous armadillo takes less damage rule):
	if the global defender is the ravenous armadillo:
		say " - 3 (tough scales)[run paragraph on]";
		decrease the attack damage by 3.

The intrinsic heat resistance of the ravenous armadillo is 3.

A physical damage reduction rule (this is the armadillo physical damage reduction rule):
	if the test subject is the ravenous armadillo:
		increase the pdr by 3.
		
When play begins:
	let X be a random natural weapon part of the ravenous armadillo;
	now damage die of X is 4;
	now dodgability of X is 3;
	now passive parry max of X is 1;
	now active parry max of X is 3;
	now the printed name of X is "bony tail club".			

Section - Prose

Report an actor hitting the dead ravenous armadillo:
	say "As the armadillo dies, its body splits open, revealing [if at least one thing is in the armadillo stomach][a list of things in the armadillo stomach][otherwise]nothing at all[end if].";
	rule succeeds.

Report the ravenous armadillo hitting a dead pc:
	say "The ravenous armadillo smashes your head in with its tail club.";
	rule succeeds.

Report the ravenous armadillo attacking:
	unless the actor is the noun:
		say "The armadillo raises its tail threateningly towards [the noun].";
	otherwise:
		say "The armadillo swings its tail towards its own head.";
	rule succeeds.

Report the ravenous armadillo parrying:
	say "The armadillo tries to ward off the attack with its tail.";
	rule succeeds.

Report the ravenous armadillo dodging:
	say "The armadillo lumbers aside.";
	rule succeeds.
		
Report the ravenous armadillo concentrating:
	if the concentration of the ravenous armadillo is:
		-- 1:
			say "The armadillo narrows its eyes. You assume it is concentrating.";
		-- 2:
			say "The armadillo makes a few thoughtful movements with its tail.";
		-- 3:
			say "A final sweep of its tail club seems to indicate that the armadillo has made up its mind.";
	rule succeeds.

Report the ravenous armadillo waiting when the ravenous armadillo is insane:
	say "The armadillo tries to eat its own feet.";
	rule succeeds.
		

Section - Armadillo-eating

Armadillo-eating is an action applying to nothing.

An AI action selection rule for the ravenous armadillo (this is the ravenous armadillo considers eating rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the ravenous armadillo armadillo-eating;
	if a random chance of 1 in 2 succeeds:
		if there is a good item for the armadillo to eat:
			increase Action Weight entry by 12;
		otherwise if a random chance of 1 in 10 succeeds:
			increase Action Weight entry by 10.

To decide whether there is a good item for the armadillo to eat:
	repeat with item running through things in the location of the ravenous armadillo:
		if item is not a person and item is not scenery and item is not fixed in place and item is not hot:
			decide yes;
	decide no.

To decide which thing is the armadillo food:
	let m be 20; [we try twenty times]
	let item be the ravenous armadillo;
	while m is greater than 0:
		now item is a random thing in the location of the ravenous armadillo;
		if item is not a person and item is not scenery and item is not fixed in place and item is not hot:
			now m is 0;
		otherwise:
			decrease m by 1;
			now item is the ravenous armadillo;
	decide on item.

Carry out the ravenous armadillo armadillo-eating:
	let item be the armadillo food;
	if item is the ravenous armadillo:
		if the armadillo is visible and the location of the armadillo is the location of the player:
			say "The armadillo sniffs along the ground, searching for food.";
	otherwise:
		if the armadillo is visible and the location of the armadillo is the location of the player:
			say "The armadillo gobbles up [the item].";
		otherwise:
			let way be best route from location of player to location of ravenous armadillo;
			if way is a direction:
				say "You hear a crunching noise [best route from location of player to location of ravenous armadillo].";
		move item to the armadillo stomach;
[		say "TEST CODE: eaten [item]."].


Section - The armadillo stomach

[Wacth out: if you write AI rules that allow the armadillo to use items it encloses, it may start using things it has eaten!]

The armadillo stomach is a closed opaque container. The armadillo stomach is part of the ravenous armadillo.

Dungeon interest rule (this is the fill the stomach rule):
	if ravenous armadillo is not off-stage:
		let item be a random off-stage minor thing;
		unless item is nothing:
			move item to the armadillo stomach;
			if generation info is true, say "* Moved [item] to the stomach of the armadillo.".

Every turn when at least one thing is in the armadillo stomach:
	repeat with item running through things in the armadillo stomach:
		corrode item.

To do the armadillo stomach trick:
	if at least one thing is in the armadillo stomach:
		repeat with item running through things in the armadillo stomach:
			move item to the location of the ravenous armadillo.

The armadillo stomach is privately-named.


Section - Armadillo also eats when the player is not around

Every turn when the armadillo is not off-stage (this is the armadillo eats when the player is not around rule):
	if the location of the player is not the location of the ravenous armadillo:
		if a random chance of 1 in 5 succeeds:
			try the ravenous armadillo armadillo-eating.

Section - Armadillo moves around

Every turn when the armadillo is not off-stage (this is the armadillo moves when the player is not around rule):
	if the location of the player is not the location of the ravenous armadillo or there is no perceived threat for the ravenous armadillo:
		if a random chance of 1 in 20 succeeds:
			if at least one room is adjacent to the location of the ravenous armadillo:
				let place2 be the location of the ravenous armadillo; [needed because of a bug in inform]
				let place be a random room which is adjacent to place2;
[				let place be a random room which is adjacent to the location of the ravenous armadillo;]
				let way be the direction from the location of the ravenous armadillo to place;
				[say "TEST CODE: trying the armadillo going [way].";]
				try the ravenous armadillo going way.

Section - Power of the Armadillo

The power of the armadillo is a power. Ravenous armadillo grants power of the armadillo.
The power level of power of the armadillo is 1.
The command text of power of the armadillo is "scales[if scales-cooldown is not 0] ([scales-cooldown])[end if]".

Absorbing power of the armadillo:
	do the armadillo stomach trick;
	increase melee of the player by 1;
	increase permanent health of the player by 5;
	say "As the armadillo succumbs, you feel its soul absorbed into your own body. ([bold type]Power of the armadillo[roman type]: +1 attack, +1 damage resistance, +5 health, and the [italic type]scales[roman type] skill, which allows you to cover yourself in hard scales.)[paragraph break]".

A damage modifier rule (this is the power of the armadillo gives damage resistance rule):
	if the global defender is the player and the power of the armadillo is granted:
		if the numbers boolean is true, say " - 1 (armadillo)[run paragraph on]";
		decrease the attack damage by 1.

Repelling power of the armadillo:
	decrease melee of the player by 1;
	decrease permanent health of the player by 5.

Section - The scales skill

A person can be at-scale. A person is usually not at-scale.

A damage modifier rule (this is the scales gives damage resistance rule):
	if the global defender is at-scale:
		let n be the final body of the global defender divided by 3;
		increase n by 5;
		if the numbers boolean is true, say " - [n] (scales)[run paragraph on]";
		decrease the attack damage by n.

Scaling is an action applying to nothing. Understand "scale" and "scales" as scaling.

Check scaling:
	if power of the armadillo is not granted:
		take no time;
		say "You do not possess that power." instead.

Check scaling:
	if the combat state of the player is not at-React:
		take no time;
		say "You can only use the scales ability as a reaction." instead.

Scales-cooldown is a number that varies. Scales-cooldown is 0.

Every turn when main actor is the player:
	if scales-cooldown is greater than 0:
		decrease scales-cooldown by 1;
		if combat status is peace:
			now scales-cooldown is 0.
		
Check scaling:
	if scales-cooldown is not 0:
		take no time;
		say "You must wait [scales-cooldown] turn[unless scales-cooldown is 1]s[end if] before you can use your scaling ability again." instead.		

Carry out scaling:
	say "Hard scales appear all over your body.[line break][paragraph break]";
	now the player is at-scale;
	let n be 10;
	decrease n by final spirit of the player divided by 4;
	now scales-cooldown is n.
	
Aftereffects rule (this is the remove at-scale rule):
	now the global attacker is not at-scale.

Status skill rule (this is the armadillo status skill rule):
	if the power of armadillo is granted:
		say "You can react by using your [bold type]scales[roman type] power, which covers you in hard scales that reduce the damage done to you. This ability has a cooldown. [italic type](Level 1)[roman type][line break][run paragraph on]".



Chapter - Level 1 - Miranda

Section - Definitions

Miranda is a monster. "A stunning young woman in a simple monk's robe awaits you."

Miranda is proper-named. Miranda is female. Miranda is not neuter. Understand "woman" and "stunning" and "monk" as Miranda.

The level of the Miranda is 1.

The description of Miranda is "Although she is currently working as one of Malygris's guards, Miranda dreams about a bright future as a famous adventurer.".

The health of Miranda is 12.
The melee of Miranda is 0.
The defence of Miranda is 7.
The body score of Miranda is 5.
The mind score of Miranda is 7.
The spirit score of Miranda is 5.

Miranda is weapon user.

Section - Miranda's robe

The monk's robe is a shirt. The monk's robe is cloth.
Miranda wears monk's robe.
The description of monk's robe is "A plain and simple robe. You doubt it is useful for any purpose but modesty.".

Section - Nunchuck

The pair of nunchucks are a weapon. The pair of nunchucks is wood. Understand "nunchuck" and "nunchuk" and "nunchuks" as the pair of nunchucks. The pair of nunchucks is ambiguously plural.
The description of the pair of nunchucks is "These two pieces of wood with a metal chain between them can be surprisingly dangerous.".
The active parry max of the pair of nunchucks is 4.

Miranda carries the pair of nunchucks. The pair of nunchucks is readied.

Section - Stunning blow

Stunning is an action applying to one thing. Understand "stun [person]" as stunning.

Stunning is attacklike behaviour.

Does the player mean stunning an alive person: it is very likely.
Does the player mean stunning the player: it is unlikely.

A person can be at-stun. A person is usually not at-stun.

A person can be sometime-stunned. [for the Stunning performance achievement]

First check stunning:
	if Power of Miranda is not granted:
		take no time;
		say "You do not have that power." instead.

Check stunning (this is the stun yourself rule):
	if the noun is the player:
		take no time;
		say "You can't bring yourself to do it." instead.

Check stunning:
	abide by the check attacking rules.

Carry out an actor stunning:
	now the actor is at-stun;
	try the actor attacking the noun instead.

A damage modifier rule (this is the less damage when stunning rule):
	if the global attacker is at-stun:
		if the numbers boolean is true, say " - 1 (stunning)[run paragraph on]";
		decrease the attack damage by 1.

Check Miranda attacking:
	if the noun is not stunned and Miranda is not at-stun:
		try Miranda stunning the noun instead.

Aftereffects rule (this is the stunning rule):
	if the global attacker is at-stun and the global defender is not dead:
		if the attack damage is greater than 0:
			if the global attacker is the player:
				now global defender is sometime-stunned; [for the Stunning performance achievement]
				if at least three people are sometime-stunned:
					award achievement stunning performance;
			let m be the final mind of the global attacker;
			if stun count of the global defender is less than m:
				now the stun count of the global defender is m;
			now stun strength of the global defender is final mind of the global attacker divided by 2;
			say "[if global defender is player]You are[otherwise][The global defender] is[end if] [bold type]stunned[roman type], receiving a -1 attack penalty and a -[stun strength of the global defender] penalty to all faculties for [m] turns!";			
	now the global attacker is not at-stun.

Status rule (this is the stunned status rule):
	if the player is stunned:
		say "You are [bold type]stunned[roman type]: -1 to attack, -[stun strength of the player] to body, mind and spirit.[line break][run paragraph on]".


Section - Stunned

A person has a number called the stun count. The stun count of a person is usually 0.
A person has a number called the stun strength.

Definition: a person is stunned if his stun count is greater than 0.

An attack modifier rule (this is the attack roll stunned bonus rule):
	if the global attacker is stunned:
		if the numbers boolean is true, say " - 1 (stunned)[run paragraph on]";
		decrease the attack strength by 1.

Chance to win rule (this is the CTW stun penalty rule):
	if the main actor is stunned:
		decrease the chance-to-win by 1.

A faculty bonus rule (this is the stunning faculty penalty rule):
	if test subject is stunned:
		decrease faculty bonus score by stun strength of the test subject.

Every turn (this is the stun wears off rule):
	if the main actor is stunned:
		decrease stun count of main actor by 1;
		if stun count of main actor is 0:
			if main actor is player:
				say "You are [bold type]no longer stunned[roman type].";
			otherwise if main actor is visible:
				say "[The main actor] [if the main actor is plural-named]are[otherwise]is[end if] [bold type]no longer stunned[roman type].".

Section - Miranda's Prose

Report an actor hitting the dead Miranda:
	say "'But... my adventure was only just beginning!' cries Miranda.";
	rule succeeds.

Report Miranda hitting a dead pc:
	say "Miranda dances on your corpse. 'This is my first step towards fame!'";
	rule succeeds.

Report Miranda attacking:
	unless the actor is the noun:
		say "Miranda jumps towards [the noun][if Miranda is at-stun], intent on stunning[end if].";
	otherwise:
		say "'I just can't go on,' Miranda sobs as she attempts to end her own life.";
	rule succeeds.

Report Miranda parrying:
	say "Miranda attempts to ward off the attack.";
	rule succeeds.

Report Miranda dodging:
	say "Miranda jumps aside.";
	rule succeeds.

Report Miranda concentrating:
	if the concentration of the actor is:
		-- 1:
			say "Miranda seeks the calm within.";
		-- 2:
			say "Chanting softly, Miranda aligns her spirit with the ambient energies.";
		-- 3:
			say "Miranda finishes her meditations.";
	rule succeeds.

Report Miranda waiting when Miranda is insane:
	say "Miranda waves her hands around in a magical pattern that you do not recognise. 'Wax on, wax off,' she announces.";
	rule succeeds.

Section - Power of Miranda

The power of Miranda is a power. Miranda grants power of Miranda.
The power level of power of Miranda is 1.
The command text of power of Miranda is "stun".

Absorbing power of Miranda:
	increase melee of the player by 1;
	increase defence of the player by 1;	
	increase permanent health of the player by 5;
	say "As Miranda dies, you feel her soul absorbed into your own body. ([bold type]Power of Miranda[roman type]: +1 attack, +1 defence, +5 health, and the [italic type]stun[roman type] skill.)[paragraph break]".

Repelling power of Miranda:
	decrease melee of the player by 1;
	decrease defence of the player by 1;
	decrease permanent health of the player by 5.

Status skill rule (this is the Miranda status skill rule):
	if the power of Miranda is granted:
		say "You have the [bold type]stun[roman type] skill: you can try to [italic type]stun[roman type] an enemy; this means you attack with a -1 damage penalty, but if you hit you will decrease the opponent's effectiveness for several rounds. [italic type](Level 1)[roman type][line break][run paragraph on]".





Chapter - Level 2 - Chain Golem

[Chain golem: when concentrating, surrounds itself with a whirling, slicing field of chains.] [Wounds inflicted by the chain golem continue to bleed?]

Section - Definitions

The chain golem is a monster. "The room is dominated by a chain golem, a moving mass of [if chain golem is iron]iron and copper[otherwise][material-adjective of material of chain golem][end if] chains, both thick and thin, that hulks in its center[if the concentration of the chain golem is not 0]. The golem is spinning [end if][if the concentration of the chain golem is 1]slowly[otherwise if the concentration of the chain golem is 2]wildly[otherwise if the concentration of the chain golem is 3]furiously[end if]."

The level of the chain golem is 2.

The chain golem is eyeless.
The chain golem is iron.
The chain golem is emotionless.

The description of the chain golem is "A hulking form made of [if chain golem is iron]metal[otherwise][material-adjective of material of chain golem][end if] chains and animated by a soul bound to it through dark magics.".

The health of the chain golem is 24.
The melee of the chain golem is 1.
The defence of the chain golem is 8.

The body score of the chain golem is 7.
The mind score of the chain golem is 4.
The spirit score of the chain golem is 7.

When play begins:
	let X be a random natural weapon part of the chain golem;
	now damage die of X is 2;
	now dodgability of X is 2;
	now passive parry max of X is 2;
	now active parry max of X is 3;
	now the printed name of X is "lashing chains";
	now X is ranged.

First carry out an actor attacking the chain golem (this is the attack a spinning chain golem rule):
	let W be a random readied weapon held by the actor;
	unless W is ranged:
		say "[The actor] attempt[s] to duck under the whirling chains. [run paragraph on]";
		let n be the concentration of the chain golem;
		increase n by 7;
		if a random chance of 1 in 2 succeeds:
			decrease n by 1;
		test the body of the actor against n;
		if test result is false:
			let n be two times the concentration of the chain golem;
			calculate the pdr for the actor;
			decrease n by pdr;
			if n is less than 0:
				now n is 0;
			unless n is 0:
				say " One of the chains catches [the actor] with a loud smack, dealing [bold type][n] damage[roman type][run paragraph on]";
				decrease the health of the actor by n;
				if the actor is alive:
					if the concentration of the actor is not zero:
						say " and breaking [possessive of the actor] concentration.";
						now concentration of the actor is 0;
					otherwise:
						say ".";
				otherwise:
					say "[if the actor is the player] and killing you.[otherwise] [The actor] immediately dies.[end if]";
					have an event of the chain golem killing the actor;
					if the player is dead:
						end the story saying "You died valiantly, but in vain";
					rule fails;
			otherwise:
				say " One of the chains catches [the actor] with a loud smack, but it deals no damage[roman type].";
		otherwise:
			say "[paragraph break]".

A damage modifier rule (this is the chain golem damage depends on concentration rule):
	if the global attacker is the chain golem and the concentration of the chain golem is not 0:
		let n be the concentration of the chain golem times 2;
		if the numbers boolean is true, say " + [n] (golem spinning)[run paragraph on]";
		increase the attack damage by n.	

This is the new concentration damage modifier rule:
	unless global attacker is the chain golem:
		if the concentration of the global attacker is greater than 1:
			let the first dummy be 0;
			if the concentration of the global attacker is 2, now the first dummy is 2;
			if the concentration of the global attacker is 3, now the first dummy is 4;
			if the numbers boolean is true, say " + ", the first dummy, " (concentration)[run paragraph on]";
			increase the attack damage by the first dummy.
The new concentration damage modifier rule is listed instead of the concentration damage modifier rule in the damage modifier rulebook.
						
An AI action selection rule for the chain golem (this is the chain golem likes to concentrate rule):
	unless a random chance of 1 in 10 succeeds:
		choose row with an Option of the action of the chain golem concentrating in the Table of AI Action Options;
		increase the Action Weight entry by 15.

[An AI action selection rule (this is the chain golem attack select rule):
	if the global attacker is the chain golem:
		choose row with an Option of the action of the global attacker attacking the global defender in the Table of AI Action Options;
		if concentration of the global attacker is 0:
			decrease the Weight entry by 15;
		if concentration of the global attacker is 1:
			decrease the Weight entry by 8.]


Section - Disarm power

Golem-disarming is an action applying to one thing.

[TODO: any reason why this shouldn't work for any target?]
An AI action selection rule for the at-Act chain golem (this is the chain golem considers disarming rule):	
	if chosen target is the player:
		if the player carries at least one readied artificial weapon:
			let X be a random readied artificial carried by the player;
			choose a blank Row in the Table of AI Action Options;
			now the Option entry is the action of the chain golem golem-disarming the chosen target;
			if a random chance of 1 in 10 succeeds:
				increase the Action Weight entry by 20.

Carry out a person golem-disarming:
	say "[The chain golem] suddenly launches several of its chains in an attempt to grab [possessive of the noun] weapon. [italic type][run paragraph on]";
	test the spirit of the noun against 10;
	if test result is true:
		say "[roman type] [The noun] see[s] it coming in time, and manage[s] to keep the weapon out of the golem's reach.";
	otherwise:
		let X be a random readied weapon carried by the noun;
		say "[roman type] [The noun] realise[s] what is happening only when it is too late, and a chain has already wrapped itself around [possessive of the noun] [X], pulls sharply, and sends the weapon flying across the room.";
		now X is not readied;
		now a random natural weapon part of the noun is readied;
		move X to the location.


Section - Prose

Report an actor hitting the dead chain golem:
	say "The chains lash out one final time, blindly seeking prey -- but fall down limply before they can hit anyone. With thousands of [if chain golem is iron]hard metal [end if]clicks they start falling asunder.";
	rule succeeds.

Report the chain golem hitting a dead pc:
	say "Smashed by the chains, your broken body is slowly dragged towards the core of the golem -- where an unmentionable fate awaits it.";
	rule succeeds.

Report the chain golem attacking:
	unless the actor is the noun:
		say "Several of the [if concentration of the chain golem is 1]slowly spinning [otherwise if concentration of the chain golem is 2]spinning [otherwise if concentration of the chain golem is 3]wildly spinning [end if]chains [one of]direct themselves towards[or]lash out at[or]attempt to smash themselves into[at random] [the noun].";
	otherwise:
		say "The chain golem's chains get all entangled, and seem to want to rip each other apart.";
	rule succeeds.

Report the chain golem parrying:
	say "The chain golem lashes out with a heavy [material-adjective of material of chain golem] chain, trying to stop the attack.";
	rule succeeds.

Report the chain golem dodging:
	say "The chain golem attempts to squirm out of the way.";
	rule succeeds.

Report the chain golem concentrating:
	if the concentration of the chain golem is:
		-- 1:
			say "The chain golem starts rotating slowly, spinning its chains around its core.";
		-- 2:
			say "The chain golem speeds up, its chains whirling through the air.";
		-- 3:
			say "The chain golem spins even faster, audibly slashing the air with its whip-like [if chain golem is iron]metal[otherwise][material-adjective of material of chain golem][end if] appendages.";
	rule succeeds.

Lose concentration prose rule for the chain golem:
	say "Unbalanced by the hit, the chain golem [bold type]stops spinning[roman type]." instead.

Report the chain golem waiting when the chain golem is insane:
	say "The chain golem dances what appears to be a [one of]wild tango[or]passable waltz[or]pretty insane jumpstyle[or]romantic merengue[at random].";
	rule succeeds.

Section - Power

The power of the chains is a power. Chain golem grants power of the chains.
The power level of power of the chains is 2.
The command text of power of the chains is "lash[if lash-cooldown is not 0] ([lash-cooldown])[end if]".

Absorbing power of the chains:
	increase melee of the player by 2;
	increase inherent damage modifier of the player by 2;
	increase defence of the player by 1;
	increase permanent health of the player by 12;
	say "As the chain golem bursts apart into its constituent links, you feel the soul that animated it absorbed into your own body. ([bold type]Power of the chains[roman type]: +2 attack, +2 damage, +1 defence, +12 health, and the [italic type]lash[roman type] skill.)[paragraph break]".

Repelling power of the chains:
	decrease melee of the player by 2;
	decrease inherent damage modifier of the player by 2;
	decrease defence of the player by 1;
	decrease permanent health of the player by 12.
	
Chapter - Ability - Lashing

Lashing is an action applying to nothing. Understand "lash" and "lash out" as lashing.

Check lashing:
	if power of the chains is not granted:
		take no time;
		say "You do not possess that power." instead.

Check lashing:
	if the combat state of the actor is not at-React:
		take no time;
		say "You can only lash as a reaction to an attack." instead.

Carry out lashing:
	now lash-cooldown is 10 - final spirit of the player / 5;
	choose a blank row in the Table of Delayed Actions;
	let n be 10 - final spirit of the player / 4;
	let m be a random number between n and 12;
	now the Action Speed entry is m;
	now the Action entry is the action of the actor hitting the main actor.

Report lashing:
	say "You will attempt to strike swiftly, before you are hit.".


Lash-cooldown is a number that varies. Lash-cooldown is 0.

Every turn when main actor is the player:
	if lash-cooldown is greater than 0:
		decrease lash-cooldown by 1;
		if combat status is peace:
			now lash-cooldown is 0.
		
Check lashing:
	if lash-cooldown is not 0:
		take no time;
		say "You must wait [lash-cooldown] turn[unless lash-cooldown is 1]s[end if] before you can use your lashing ability again." instead.		

Status skill rule (this is the chain golem power status skill rule):
	if power of the chains is granted:
		say "You can [bold type]lash[roman type] as a reaction. This counterattack will sometimes, but not always, happen before the enemy hits you. This ability has a cooldown. [italic type](Level 2)[roman type][line break][run paragraph on]".







Chapter - Level 2 - Jumping Bomb

Section - Definitions

A jumping bomb is a monster. "A skull-sized ball of gooish, undulating flesh jumps up and down [if concentration of the jumping bomb is 0]ponderously[otherwise if concentration of the jumping bomb is 1]slowly[otherwise if concentration of the jumping bomb is 2]quickly[otherwise if concentration of the jumping bomb is 3]frantically[end if]. It is a jumping bomb, [unless concentration of the jumping bomb is 3]gathering speed and[end if] preparing to launch itself at one of its enemies."

Understand "ball" and "flesh" and "meat" as the jumping bomb.

The level of jumping Bomb is 2.

The jumping bomb is eyeless.
The jumping bomb is emotionless.

The description of the jumping bomb is "Connoisseurs consider these jumping balls of red meat to be among the most exciting spectacles of Yahvinna's annual Feast of Flesh. To the slaves and convicts down in the arena, whose limbs the spectators hope to have blown into their lap, the jumping bombs also bring excitement, though of a wholly different type.".

The health of the jumping bomb is 18.
The melee of the jumping bomb is -1.
The defence of the jumping bomb is 8.

The body score of the jumping bomb is 8.
The spirit score of the jumping bomb is 3. 
The mind score of the jumping bomb is 3.

When play begins:
	if difficulty is 0:
		decrease melee of the jumping bomb by 1. [Too hard for new players.]

When play begins:
	let X be a random natural weapon part of the jumping bomb;
	now dodgability of X is 3;
	now passive parry max of X is 0;
	now active parry max of X is 0;
	now printed name of X is "bomb's detonating surface".

Initiative update rule when the jumping bomb is enclosed by the location (this is the jumping bomb has slightly less initiative rule):
	if a random chance of 1 in 5 succeeds:
		decrease the initiative of the jumping bomb by 1.

An AI action selection rule for the at-Act jumping bomb (this is the jumping bomb only attacks when highly concentrated rule):
	choose row with an Option of the action of the bomb attacking the chosen target in the Table of AI Action Options;
	if concentration of the jumping bomb is less than 2:
		decrease the Action Weight entry by 100;
	if concentration of the jumping bomb is 2:
		decrease the Action Weight entry by 5.

An AI action selection rule for the jumping bomb (this is the jumping bomb concentration select rule):
	choose row with an Option of the action of the bomb concentrating in the Table of AI Action Options;
	increase the Action Weight entry by 5;
	if the jumping bomb is at-React:
		decrease Action Weight entry by 500.
		
An AI action selection rule for the at-React jumping bomb (this is the jumping bomb dislikes parrying rule):
	choose row with an Option of the action of the bomb parrying in the Table of AI Action Options;
	decrease the Action Weight entry by 100.

A contact rule when the global attacker is the jumping bomb (this is the jumping bomb kamikaze rule):
	say "[roman type]When the jumping bomb hits [the global defender], it explodes with a terrible bang. [if the global defender is the player]Not even all the king's horses and all the king's men will be able to put the thousand pieces of your body back together[otherwise][The global defender] is killed instantly[end if][italic type].";
	now the health of the global attacker is -10;
	now the health of the global defender is -10;
	have an event of the global attacker killing the global defender;		
	if the player is not alive:
		end the story saying "You exploded";
		rule fails.

An attack modifier rule (this is the jumping bomb concentration attack modifier rule):
	if the global attacker is the jumping bomb and the concentration of the jumping bomb is greater than 0:
		let n be 2 times the concentration of the jumping bomb;
		say " - ", n, " (lower concentration bonus for jumping bomb)[run paragraph on]";
		decrease the attack strength by n.
			
An attack modifier rule (this is the jumping bomb concentration defence modifier rule):
	if the global defender is the jumping bomb and the concentration of the jumping bomb is greater than 0:
		let n be the concentration of the jumping bomb;
		say " - ", n, " (speed of the jumping bomb)[run paragraph on]";
		decrease the attack strength by n.	

Chance to win rule when the global defender is the jumping bomb (this is the CTW bomb penalty rule):
	if the concentration of the jumping bomb is greater than 0:
		decrease the chance-to-win by the concentration of the jumping bomb.


Section - Prose

Report an actor hitting the dead jumping bomb:
	say "As the last of its blood flows out of the jumping bomb, it goes limp and falls to the floor like a punctured balloon.";
	rule succeeds.

Report the bomb attacking:
	unless the actor is the noun:
		say "Suddenly changing its direction, the jumping bomb launches itself towards [the noun] -- threatening instant death upon contact.";
	otherwise:
		say "The jumping bomb attempts the seemingly impossible feat of smashing into itself.";
	rule succeeds.

Report the bomb dodging:
	say "The jumping bomb attempts to bump out of the way.";
	rule succeeds.

Report the bomb concentrating:
	if the concentration of the actor is:
		-- 1:
			say "The jumping bomb jumps up and down a little bit faster.";
		-- 2:
			say "The jumping bomb speeds up, and is now bumping around energetically.";
		-- 3:
			say "The jumping bomb accelerates yet further, your image of it dissolving almost into a blur.";
	rule succeeds.

Lose concentration prose rule for the jumping bomb:
	say "Knocked back by the hit, the jumping bomb [bold type]loses most of its speed[roman type]." instead.

Report bomb waiting when jumping bomb is insane:
	say "The bomb jumps around the room as if there were no tomorrow.";
	rule succeeds.

Section - Power

The power of the bomb is a power. Jumping bomb grants power of the bomb.
The power level of power of the bomb is 2.
The command text of power of the bomb is "explode on death".

Absorbing power of the bomb:
	increase melee of the player by 2;
	increase defence of the player by 2;
	increase permanent health of the player by 10;
	say "As the bomb deflates, you feel its insane, beastly soul absorbed into your own body. ([bold type]Power of the bomb[roman type]: +2 attack, +2 defence, +10 health, and you will now [italic type]explode[roman type] when killed, giving you a last chance to defeat your enemy and perhaps absorb his soul in the process.)[paragraph break]".

Repelling power of the bomb:
	decrease melee of the player by 2;
	decrease defence of the player by 2;
	decrease permanent health of the player by 10.

Section - Explode

Killing rule (this is the explode after death rule):
	if the killed-guy is the player:
		if the killer-guy is not dead:
			if power of the bomb is granted:
				let m be final body of the player;
				if m is less than 5, now m is 5;
				let n be a random number between 5 and m;
				if health of the killer-guy is not greater than n:
					say "Your body explodes vehemently, killing [the killer-guy][if the level of the killer-guy is 0]. Unfortunately, [the killer-guy] is levelless and cannot heal you[otherwise if the abyss of the soul is alive and the abyss of the soul is not off-stage]. Your soul attempts to swallow that of your enemy, but before this can happen, you are both sucked into the abyss of the soul[otherwise if the level of the killer-guy is 5]. Your soul attempts to swallow that of your enemy, but [the killer-guy] is quicker and far more powerful, swallowing yours and thus coming back to life. You, however, are destroyed for all eternity[otherwise]! As your soul swallows that of your enemy whole, you feel your body reconstituting itself[end if].[paragraph break]";
					if the level of the killer-guy is not 0 and the level of the killer-guy is not 5:
						unless (the abyss of the soul is alive and the abyss of the soul is not off-stage):
							now the health of the player is 1;
							now the health of the killer-guy is -1;
							have an event of the player killing killer-guy;
				otherwise:
 					say "Your body explodes vehemently, but [the killer-guy] survives the blast.[paragraph break]".
		
Status skill rule (this is the jumping bomb power status skill rule):
	if power of the bomb is granted:
		say "When you die, you [bold type]explode[roman type], dealing an amount of damage to your enemy based on your body score. This gives you a last chance to kill your enemy, and perhaps absorb his soul and come back to life in the process. [italic type](Level 2)[roman type][line break][run paragraph on]".







Chapter - Level 2 - The reaper

Section - Definitions

The Reaper is a male monster. The reaper is not neuter. "A pale man in dark robes[if the reaper carries a readied scythe], wielding a huge scythe,[end if] stands here. It is the Reaper, a serial killer who believes he is Death himself."

Understand "pale" and "man" and "dark" and "robes" and "serial" and "killer" and "him" as the Reaper.

The level of the Reaper is 2.

The description of the reaper is "He once used to be a man like any other, but his vocation has left him unnaturally pale and gaunt.".

The health of the Reaper is 24.
The melee of the Reaper is 1.
The defence of the Reaper is 8.

The body score of the Reaper is 6.
The mind score of the Reaper is 5.
The spirit score of the Reaper is 7.

When play begins:
	let X be a random natural weapon part of the Reaper;
	now printed name of X is "Reaper's knuckles".

The reaper is a weapon user.

Section - Reaper's scythes of flame, slaying and oxidation

The scythe of flaming is a scythe. The description of the scythe of flaming is "Enchanted with a spell of heat, this scythe always remains unnaturally hot.".
The internal heat of scythe of flaming is 3.

The scythe of slaying is a scythe. The scythe of slaying is silver. The description of the scythe of slaying is "Ages ago, the monks of Averoigne forged these weapons, imbuing them with powerful enchantments against the living dead.".

A damage modifier rule (this is the scythe of slaying deals great damage to undead rule):
	if global attacker weapon is the scythe of slaying and global defender is undead:
		if the numbers boolean is true, say " + 5 (slaying undead)[run paragraph on]";
		increase the attack damage by 5.

The special weapon info of the scythe of slaying is "; massive damage against undead[run paragraph on]".

The scythe of oxidation is a scythe. The scythe of oxidation is iron. The scythe of oxidation is rusted. The description of the scythe of oxidation is "Some entropic demon or deity has given this scythe the ability to rust the opponent's weapons in combat.".

The special weapon info of the scythe of oxidation is "; rusts weapons[run paragraph on]".

An aftereffects rule (this is the scythe of oxidation rusts stuff rule):
	if the global attacker weapon is the scythe of oxidation:
		if the global defender is at parry and the attack damage is 0:
			if the global defender weapon is iron and the global defender weapon is not rusted:
				say "Having been in contact with the scythe of oxidation, [the global defender weapon] [bold type]rusts[roman type].";
				now the global defender weapon is rusted;
	if the global defender weapon is the scythe of oxidation:
		if the global defender is at parry and the attack damage is 0:
			if the global attacker weapon is iron and the global attacker weapon is not rusted and the passive parry max of the global attacker weapon is not 0:
				if the global attacker weapon is not a part of the global attacker:
					say "Having been in contact with the scythe of oxidation, [the global attacker weapon] [bold type]rusts[roman type].";
					now the global attacker weapon is rusted;
				otherwise:
					if the global defender is not rusted and the global defender is alive:
						say "Having hit the scythe of oxidation, [the global defender] [bold type]rusts[roman type]!";			
						now the global defender is rusted;
	if the global attacker weapon is the scythe of oxidation:
		if the global defender is iron and the attack damage is greater than 0:
			if the global defender is not rusted and the global defender is alive:
				say "Having been hit with the scythe of oxidation, [the global defender] [bold type]rusts[roman type]!";			
				now the global defender is rusted.

First when play begins (this is the Reaper carries a random scythe rule): [first, to stop game from readying another weapon]
	let m be a random number between 1 and 3;
	if m is 1:
		move the scythe of flaming to the Reaper;
		now the scythe of flaming is readied;
	if m is 2:
		move the scythe of slaying to the Reaper;
		now the scythe of slaying is readied;
	if m is 3:
		move the scythe of oxidation to the Reaper;
		now the scythe of oxidation is readied.

Section - The Reaper follows you!

Every turn when the Reaper is in the location and the Reaper is not follower (this is the Reaper starts following rule):
	if the player is not hidden:
		say "'Do not be afraid, for I will end your suffering!' the Reaper exclaims.";
		now Reaper is follower.
	
Follower percentile chance of the Reaper is 5.

When play begins:
	if difficulty is 0:
		now follower percentile chance of the Reaper is 0. [Too confusing for new players.]

Section - Prose

Report an actor hitting the dead Reaper:
	say "'This -- but this is impossible! Death is me!' the Reaper shouts as the bony hands of disillusion pull him to the underworld.";
	rule succeeds.

Report the Reaper hitting a dead pc:
	say "'Now go to sleep, my child,' says the Reaper. 'You have suffered enough.'";
	rule succeeds.

Report the reaper attacking:
	unless the actor is the noun:
		say "The Reaper advances towards [the noun][one of][or], with a skulllike grin[or], saying 'Et in Arcadia ego!' in a booming voice[as decreasingly likely outcomes].";
	otherwise:
		say "'What is dead may never die!' the Reaper screams.";
	rule succeeds.

Report the Reaper dodging:
	say "'Nobody can touch Death!' says the Reaper as he ducks away.";
	rule succeeds.

Report the Reaper concentrating:
	if the concentration of the Reaper is:
		-- 1:
			say "The Reaper contemplates the meaning of Death.";
		-- 2:
			say "The Reaper immerses himself further into his meditations on mortality.";
		-- 3:
			say "'I see your end!' the Reaper announces as he finishes his contemplations.";
	rule succeeds.

Report the Reaper waiting when the Reaper is insane:
	say "'I feel... alive,' the Reaper muses.";
	rule succeeds.

Section - Power

The power of the Reaper is a power. Reaper grants power of the Reaper.
The power level of power of the Reaper is 2.
The command text of power of the Reaper is "reap".

Absorbing power of the Reaper:
	increase melee of the player by 2;
	increase defence of the player by 2;
	increase permanent health of the player by 10;
	say "As the Reaper dies, his twisted mind becomes one with yours. ([bold type]Power of the Reaper[roman type]: +2 attack, +2 defence, +10 health; and since Death attends on us all, you can now [italic type]reap[roman type] any non-undead person you have seen, instantly teleporting to their location.)[paragraph break]".

Repelling power of the Reaper:
	decrease melee of the player by 2;
	decrease defence of the player by 2;
	decrease permanent health of the player by 10.

Status skill rule (this is the Reaper power status skill rule):
	if power of the Reaper is granted:
		say "You partake of the omnipresence of Death. You can [bold type]reap[roman type] anyone you have seen, which will instantly teleport you to their location -- although Death will assert his power over you in the process. [italic type](Level 2)[roman type][line break][run paragraph on]".	

Section - Reaping

Reaping is an action applying to one thing. Understand "reap [any person]" as reaping.

[Thanks Aaron A. Reed, for the following two bits code -- Stolen from Remembering]

The allow reaping faraway things rule is listed instead of the basic accessibility rule in the action-processing rules.

This is the allow reaping faraway things rule:
    unless reaping, abide by the basic accessibility rule.

[End stealing from Aaron.]

Does the player mean reaping an alive person: it is likely.
Does the player mean reaping a seen person: it is likely.

Check reaping (this is the need the Power of the Reaper rule):
	unless Power of the Reaper is granted:
		take no time;
		say "You do not have that power." instead.

Check reaping (this is the cannot reap the unseen rule):
	if the noun is not seen:
		take no time;
		say "You have not yet seen [the noun]." instead.

Check reaping (this is the cannot reap the undead rule):
	if the noun is undead:
		take no time;
		say "The undead are no longer haunted by Death, so you cannot reap them." instead.

Check reaping (this is the cannot reap yourself rule):
	if the noun is the player:
		take no time;
		say "You cannot do that to yourself." instead.

Check reaping (this is the reaping a dead person rule):
	if the noun is dead:
		end the story saying "Your dedication to Death went too far.";
		say "You are instantly transported to the Land of the Dead, where [the name of the noun] currently resides." instead.

[Check reaping (this is the reaping with one health rule):
	if the health of the player is 1:
		end the story saying "Your dedication to Death went too far.";
		say "You attempt to reap [the noun], but the strain is too much for your weak body." instead.]

Carry out reaping:
	repeat with guy running through persons in the location:
		now concentration of guy is 0;
	let n be final spirit of the player;
	unless a random chance of n in 33 succeeds:
		decrease health of the player by greatest power of the player;
		decrease permanent health of the player by greatest power of the player;
		if the health of the player is less than 1:
			end the story saying "Your dedication to Death went too far.";
			say "You attempt to reap [the noun], but the strain is too much for your weak body." instead;
	unless teleportation is impossible for the player:
		let destination be the location of the noun;
		say "You live in the aging cells of an infant's face, and your voice can be heard in the silence after each heartbeat. Death attends on us always, and in his guise you find yourself poised to reap [the noun] --[paragraph break]";
		now retreat location is destination;
		move player to destination;
		now the take no time boolean is false;
	otherwise:
		say "Something prevents you from teleporting.".





Chapter - Level 2 - Demon of Rage

The demon of rage is a demonic hostile monster. "A demon of rage fills the room with its inarticulate cries."
The demon-of-rage-number is a number that varies. The demon-of-rage-number is 0.

Understand "cries" and "inarticulate" as the demon of rage.

The level of the demon of rage is 2.
Difficulty level of the demon of rage is 2.

The description of the demon of rage is "An amorphous swirl of red and black light, this demonic creature is the spirit of rage incarnate.".
Instead of listening to the demon of rage:
	say "In its fierce wailing, you hear the voices of all your victims.".

The health of the demon of rage is 18.
The melee of the demon of rage is 0.
The defence of the demon of rage is 8.

The body score of the demon of rage is 6.
The mind score of the demon of rage is 6.
The spirit score of the demon of rage is 6. 

When play begins:
	let X be a random natural weapon part of the demon of rage;
	now dodgability of X is 2;
	now damage die of X is 6;	
	now passive parry max of X is 2;
	now active parry max of X is 0;
	now printed name of X is "demon's fiery tendrils".

Section - Getting stronger

[The demon of rage gets stronger whenever someone dies.]

Last killing rule (this is the demon of rage gets stronger rule):
	if demon of rage is not off-stage:
		if killed-guy is not the demon of rage and killed-guy is not the player:
			if x-coordinate of the location of killed-guy is not 100: [these rooms, such as the maze, are not part of the dungeon]
				do the demon of rage power-up.

To do the demon of rage power-up:
	increase demon-of-rage-number by 1;
	increase melee of demon of rage by 1;
	increase defence of demon of rage by 1;
	increase health of demon of rage by 3;
	increase permanent health of demon of rage by 3;
	increase body score of demon of rage by 1;
	increase body score of demon of rage by 2;
	increase body score of demon of rage by 3;
	if demon-of-rage-number is 2:
		now demon of rage is flyer;
	if demon-of-rage-number is 3:
		now intrinsic heat resistance of demon of rage is 2;
		now inherent damage modifier of demon of rage is 2;
	if demon-of-rage-number is 4:
		now hit protection of demon of rage is 1;
	if demon-of-rage-number is 5:		
		now inherent damage modifier of demon of rage is 3;
		now follower percentile chance of demon of rage is 70;
		now demon of rage is follower;
	if demon of rage is in the location:
		say "The [bold type]demon of rage[roman type] howls and seems to grow stronger!";
	otherwise:
		let way be the best route from the location of player to the location of the demon of rage;
		if way is a direction:
			say "You hear a [bold type]fierce howl[roman type] [way].";
		otherwise:
			say "You hear a [bold type]fierce howl[roman type] somewhere in the dungeon.".

Section - Prose

Report an actor hitting the dead demon of rage:
	say "A terrifying shriek of anger fills the entire dungeon as the demon of rage vanishes into the abyss. But has more than its outward manifestation been defeated?";
	rule succeeds.

Report the demon of rage hitting a dead pc:
	say "'No!', you scream, and the syllable turns into a fiery, a fierce, an eternal and all-devouring shriek of hate and rage.";
	rule succeeds.

Report the demon of rage attacking:
	unless the actor is the noun:
		say "Full of darkness and fire, the demon rushes towards [the noun].";
	otherwise:
		say "The demon of rage tries to claw out its own eyes.";
	rule succeeds.

Report the demon of rage dodging:
	say "The demon flashes from one side of the room to the other, attempting to dodge the attack.";
	rule succeeds.

Report the demon of rage concentrating:
	if the concentration of the actor is 1, say "The demon of rage burns with a fiercer light." instead;
	if the concentration of the actor is 2, say "The demon of rage glows like the hottest of embers." instead;
	if the concentration of the actor is 3, say "The demon of rage becomes even more radiant, and howls with the lust for blood." instead.	

Report demon of rage waiting when demon of rage is insane:
	say "The demon of rage's shrieks suddenly turn into a fit of coughing[one of][or]. Small embers fall from its mouth[at random].";
	rule succeeds.

Section - When enraged

An attack modifier rule (this is the enraged and the demon of rage rule):
	if the global attacker is enraged and the global defender is the demon of rage:
		if the numbers boolean is true, say " + 4 (attuned to the demon)[run paragraph on]";
		increase the attack strength by 4.



Section - Power


The power of rage is a power. Demon of rage grants power of rage.
The power level of power of rage is 2.
The command text of power of rage is "howl".

Absorbing power of rage:
	increase melee of the player by 2;
	increase permanent health of the player by 10;
	say "As the demon of rage dies, your heart is filled with anger. ([bold type]Power of rage[roman type]: +2 attack, +10 health; cannot retreat; you can [italic type]howl[roman type] to improve your next attack but permanently decrease your defence.)[paragraph break]".

Last check retreating (this is the do not retreat when power of rage rule):
	if the combat status is not peace and power of rage is granted:
		let Y be the player;
		repeat with X running through persons in the location:
			if the faction of X hates the faction of the player:
				now Y is X;
		take no time;
		say "And allow [the Y] to live? Never!" instead.

Last check going (this is the do not go in combat when power of rage rule):
	if the combat status is not peace and power of rage is granted:
		let Y be the player;
		repeat with X running through persons in the location:
			if the faction of X hates the faction of the player:
				now Y is X;
		take no time;
		say "And allow [the Y] to live? Never!" instead.

Repelling power of rage:
	decrease melee of the player by 2;
	decrease permanent health of the player by 10.

Status skill rule (this is the rage power status skill rule):
	if power of rage is granted:
		say "You can [bold type]howl[roman type] in rage. Your attack bonus increases by 4 for the next attack, and your damage increased by an amount that depends on your mind score. However, your defence permanently decreases by 1. [italic type](Level 2)[roman type][line break][run paragraph on]".

Section - Howling

Howling is an action applying to nothing. Understand "howl" as howling.

A person can be at-howl or not at-howl. A person is usually not at-howl.

Check howling:
	if power of rage is not granted:
		take no time;
		say "You do not possess that power." instead.
			
Carry out howling:
	say "You howl with rage!";
	now player is at-howl;
	decrease defence of player by 1.
			
An attack modifier rule (this is the howl attack bonus rule rule):
	if the global attacker is at-howl:
		if the numbers boolean is true, say " + 4 (howling)[run paragraph on]";
		increase the attack strength by 4.	

A damage modifier rule (this is the howl damage bonus rule):
	if the global attacker is at-howl:
		let n be final mind of the player / 3;
		increase n by 2;
		if the numbers boolean is true, say " + [n] (howling)[run paragraph on]";
		increase the attack damage by n.
			
Aftereffects rule (this is the take away howling rule):
	now the global attacker is not at-howl.

Status rule (this is the howling status rule):
	if the player is at-howl:
		say "You are [bold type]howling[roman type]: +4 to attack, +4 to damage.[line break][run paragraph on]".




Chapter - Level 3 - Mindslug

A mindslug is a monster. "A vast slug covered in green ooze has positioned itself in this room."

Understand "slug" and "master" and "ooze" as the mindslug.

The level of the mindslug is 3.

The description of the mindslug is "It is of the dreaded race of mindslugs, abominations that use their telepathic powers to enslave others.".

The health of the mindslug is 27.
The melee of the mindslug is 2.
The defence of the mindslug is 7.

The body score of the mindslug is 3.
The mind score of the mindslug is 11.
The spirit score of the mindslug is 7. 

When play begins:
	let X be a random natural weapon part of the mindslug;
	now dodgability of X is 3;
	now passive parry max of X is 2;
	now active parry max of X is 0;
	now printed name of X is "slug's crushing body".

Section - Mind blast action

Mindblasting is an action applying to one thing.


		
An AI action selection rule for the at-Act mindslug (this is the mindslug considers mindblasting rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the mindslug mindblasting the chosen target;
	now the Action Weight entry is 12;
	[ But it doesn't always mindblast ]
	if a random chance of 3 in 5 succeeds:
		decrease the Action Weight entry by 100.

An AI action selection rule for the at-Act mindslug (this is the mindslug dislikes attacking rule):
	choose row with an Option of the action of the mindslug attacking the chosen target in the Table of AI Action Options;
	decrease the Action Weight entry by 3.
		
An AI action selection rule for the at-React mindslug (this is the mindslug doesnt dodge rule):
	choose row with an Option of the action of the mindslug dodging in the Table of AI Action Options;
	decrease the Action Weight entry by 100.
		
Carry out the mindslug mindblasting:
	say "The mindslug blasts [the noun] with psionic energy. [italic type][run paragraph on]";
	let n be 10;
	increase n by concentration of the mindslug;
	test the mind of the noun against n; 
	say "[roman type]";
	if test result is true:
		say " [The noun] resist[s] the mindslug's influence!";
	otherwise:
		decrease mind score of the noun by 1;
		say " [The noun] fail[s] to resist the mindslug's mental blast, and [possessive of the noun] mind score decreases to [mind score of the noun].";
		if mind score of the noun is less than 1:
			if the noun is the player:
				end the story saying "You live on as the unquestioning slave of a giant slug";
			otherwise:
				now the faction of the noun is mindslug-enslaved;
				say "[The noun] is now under the control of the mindslug.";
		otherwise:
			if the concentration of the noun is greater than 0:
				let the noun lose concentration;
	now the concentration of the mindslug is 0.
		
An AI target selection rule for a person (called target) when the running AI is the mindslug (this is the mindslug prefers low mind score rule):
	decrease the Weight by the mind score of the target.

Section - Prose

Report an actor hitting the dead mindslug:
	say "A mental oppression falls from your mind as the mindslug succumbs to its injuries, its evil intelligence snuffed.";
	rule succeeds.

Report the mindslug hitting a dead pc:
	say "The mindslug crashes on top of you, burying your body under tons of oozing gastropod flesh.";
	rule succeeds.

Report the mindslug attacking:
	unless the actor is the noun:
		say "Raising its hideous body, the mindslug bears down on [the noun].";
	otherwise:
		say "The mindslug tries to smash its own head into the ground.";
	rule succeeds.

Report the mindslug dodging:
	say "The mindslug oozes out of the way.";
	rule succeeds.

Report the mindslug waiting when the mindslug is insane:
	say "You suddenly hear a voice inside your head. 'Cover yourself with salt,' it says. 'Come on, cover yourself with salt!'";
	rule succeeds.


Section - Slaves

Fafhrd is a mindslug-enslaved man. The description of Fafhrd is "This male barbarian is strong and muscular. He looks like an able and shrewd fighter.".

Health of Fafhrd is 13.
Melee of Fafhrd is 1.

When play begins:
	let X be a random natural weapon part of Fafhrd;
	now printed name of X is "Fafhrd's fists".

Fafhrd carries a sword called Fafhrd's sword. The description of Fafhrd's sword is "It looks like a normal sword that has seen a lot of use."

Follower percentile chance of Fafhrd is 75.
Fafhrd is weapon user.

Mouser is a mindslug-enslaved man. The description of Mouser is "Mouser is a small, fast man. You know his type from the alleys and alehouses of Montenoir.".

Mouser carries a sword called Mouser's sword. The description of Mouser's sword is "A relatively short sword."

Health of Mouser is 8.
Defence of Mouser is 9.

When play begins:
	let X be a random natural weapon part of Mouser;
	now printed name of X is "Mouser's fists".

Follower percentile chance of Mouser is 85.
Mouser is weapon user.

When play begins:
	if mindslug is not off-stage:
		move Fafhrd to the location of mindslug;
		move Mouser to the location of mindslug.

An attack modifier rule (this is the mindslug defended by the enslaved rule):
	if the global defender is the mindslug and the global attacker is not hidden:
		let n be the number of mindslug-enslaved persons in the location;
		if n greater than 0:
			let m be n + 1;
			let m be n times m;
			if the numbers boolean is true, say " - ", m, " (defended by slaves)[run paragraph on]";
			decrease the attack strength by m.

Chance to win rule (this is the CTW mindslug enslaved penalty rule):
	if the global defender is the mindslug:
		let n be the number of mindslug-enslaved persons in the location;
		if n greater than 0:
			let m be n + 1;
			let m be n times m;		
			decrease the chance-to-win by m.

An attack modifier rule (this is the enslaved have bad defence rule):
	if the global defender is mindslug-enslaved:
		if the numbers boolean is true, say " + 2 (defender uninterested in own safety)[run paragraph on]";
		increase the attack strength by 2.

Chance to win rule (this is the CTW enslaved bonus rule):
	if the global defender is mindslug-enslaved:
		increase the chance-to-win by 2.

Every turn (this is the free slaves of the mindslug when it is killed rule):
	if the number of mindslug-enslaved alive persons in the location is greater than 0 and the mindslug is dead:
		repeat with guy running through mindslug-enslaved alive persons in the location:
			now guy is friendly;
			if guy is undead:
				now guy is undead-faction;
			if guy is horrific:
				now guy is horrific-faction;
			if guy is Fafhrd:
				say "'Thanks, man,' says Fafhrd. 'I guess you have earned yourself some help.'[paragraph break]";
			if guy is Mouser:
				say "'I knew we shouldn't have trusted Ningauble,' Mouser states. 'Let's get out of here as quickly as possible.'[paragraph break]";
			if guy is not Fafhrd and guy is not Mouser:
				say "[The guy] is freed from the mindslug's influence.[paragraph break]"

Check a mindslug-enslaved npc attacking (this is the slaves may be freed from mindslug rule):
	consider the free slaves of the mindslug when it is killed rule;
	if actor is not mindslug-enslaved:
		do nothing instead.
		

Section - Prose for Fafhrd and Mouser

Report an actor hitting the dead Fafhrd:
	say "Cursing his fate, Fafhrd falls down[if Mouser is alive and the faction of Mouser is not mindslug-enslaved and Mouser is in the location]. 'Fafhrd!' screams Mouser[do the mouser rage][end if].";
	rule succeeds.

To say do the mouser rage:
	increase melee of Mouser by 2;
	decrease defence of Mouser by 1;
	increase health of Mouser by 5;
	if global attacker is the player:
		now faction of Mouser is hostile.

Report Fafhrd hitting a dead pc:
	say "The contemplative northern barbarian ends your life, with what seems to be a hint of sadness in his face.";
	rule succeeds.

Report Fafhrd attacking:
	unless the actor is the noun:
		say "Fafhrd rushes towards [the noun].";
	otherwise:
		say "'Let it never be said that I did not die a hero's death!' Fafhrd exclaims.";
	rule succeeds.

Report Fafhrd dodging:
	say "Fafhrd ducks aside.";
	rule succeeds.

Report Fafhrd parrying:
	say "Fafhrd raises his weapon to stop the blow.";
	rule succeeds.

Report Fafhrd waiting when Fafhrd is insane:
	say "Fafhrd stands motionless, pining for the fjords.";
	rule succeeds.

Report an actor hitting the dead Mouser:
	say "Mouser staggers backwards, mortally wounded. He tries to say something, but no sound ever passes his lips again[if Fafhrd is alive and the faction of Fafhrd is not mindslug-enslaved and Fafhrd is in the location]. 'Vengeance!' screams Fafhrd[do the fafhrd rage][end if].";
	rule succeeds.

To say do the Fafhrd rage:
	increase melee of Fafhrd by 2;
	decrease defence of Fafhrd by 1;
	increase health of Fafhrd by 5;
	if global attacker is the player:
		now faction of Fafhrd is hostile.

Report Mouser hitting a dead pc:
	say "As you fall down, Mouser shrugs somewhat apologetically.";
	rule succeeds.

Report Mouser attacking:
	unless the actor is the noun:
		say "Fast as a snake, Mouser lashes out at [the noun].";
	otherwise:
		say "'He won't see this coming!' Mouser announces as he attacks himself.";
	rule succeeds.

Report Mouser dodging:
	say "Deftly, Mouser rolls aside to avoid the attack.";
	rule succeeds.

Report Mouser parrying:
	say "Mouser tries to parry the blow.";
	rule succeeds.
	
Report Mouser waiting when Mouser is insane:
	say "'Why did I have to go after wealth and fame, instead of just marrying some full-bosomed hussy and enjoying the many, uh, joys of domestic life?' Mouser laments.";
	rule succeeds.	

Last report talking to Fafhrd when Fafhrd is friendly:
	say "Fafhrd shrugs.".
		
Last report talking to Mouser when Mouser is friendly:
	say "Mouser raises one his eyebrows.".
		

Section - Power of the Mindslug

The power of the mindslug is a power. Mindslug grants power of the mindslug.
The power level of power of the mindslug is 3.
The command text of power of the mindslug is "enslave[if enslave-cooldown is not 0] ([enslave-cooldown])[end if]".

Absorbing power of the mindslug:
	increase melee of the player by 3;
	increase defence of the player by 3;
	increase permanent health of the player by 15;
	say "As the mindslug dies, you feel its powerful intelligence absorbed into your own body. ([bold type]Power of the mindslug[roman type]: +3 attack, +3 defence, +15 health, and you can attempt to [italic type]dominate[roman type] an enemy.)[paragraph break]";
	make helpers followers.

Repelling power of the mindslug:
	decrease melee of the player by 3;
	decrease defence of the player by 3;
	decrease permanent health of the player by 15;
	unmake helpers followers;
	release slaves.

To make helpers followers:
	now Fafhrd is follower;
	now Mouser is follower.

To unmake helpers followers:
	now Fafhrd is not follower;
	now Mouser is not follower.

To release slaves:
	if at least one alive person is player-enslaved:
		say "[if at least two alive persons are player-enslaved]Your slaves are[otherwise]Your slave is[end if] [bold type]released[roman type] from bondage!";
		repeat with guy running through player-enslaved people:
			now faction of guy is hostile.


Section - Enslaving

Enslaving is an action applying to one thing. Understand "enslave [person]" as enslaving.

Check enslaving (this is the need the Power of the Mindslug to enslave rule):
	unless Power of the Mindslug is granted:
		take no time;
		say "You do not have that power." instead.

Check enslaving (this is the only enslave enemies rule):
	if the faction of the player does not hate the faction of the noun:
		take no time;
		say "You can only enslave your enemies." instead.

Check enslaving (this is the cannot enslave the undead rule):
	if the noun is undead:
		take no time;
		say "The undead cannot be enslaved." instead.

Carry out enslaving:
	let n be final mind of the noun;
	increase n by health of the noun;
	increase n by 2 * concentration of the noun;
	decrease n by 2 * concentration of the player;
	increase n by 5; [mind + health + 5 + 2 * (Concentration of target - concentration of player)]
	if noun is sometime-enslaved:
		increase n by 20;
	say "You attempt to enslave [the noun]. [run paragraph on]";
	test the mind of the player against n;
	if test result is false:
		say " Unfortunately, your will is not strong enough to break your enemy's resistance.[paragraph break]";
	otherwise:
		say "[paragraph break][bold type]'I will do your bidding, [master]!'[roman type] [the noun] whispers[if the noun is the swarm of daggers] -- somewhat surprisingly, given that it lacks not just vocal chords but also a respiratory system[otherwise] [one of]in an awed tone of voice[or]in a groveling tone of voice[purely at random][end if].[paragraph break]";
		now faction of the noun is player-enslaved;
		now noun is sometime-enslaved;
		now noun is follower;
		now follower percentile chance of noun is 95;
		if combat state of player is at-react:
			repeat through Table of Delayed Actions:
				if the action entry is the action of the noun hitting the player:
					blank out the whole row;
		now concentration of the noun is 0;
	now concentration of the player is 0;
	now enslave-cooldown is 9 - (final spirit of the player / 3).

To say master:
	if the player is male:
		say "master[run paragraph on]";
	otherwise if the player is female:
		say "mistress[run paragraph on]";
	otherwise:
		say "dread ungendered being[run paragraph on]".

A person can be sometime-enslaved. A person is usually not sometime-enslaved.

Enslave-cooldown is a number that varies. Enslave-cooldown is 0.

Every turn when main actor is the player:
	if enslave-cooldown is greater than 0:
		decrease enslave-cooldown by 1;
		if combat status is peace:
			now enslave-cooldown is 0.
		
Check enslaving:
	if enslave-cooldown is not 0:
		take no time;
		say "You must wait [enslave-cooldown] turn[unless enslave-cooldown is 1]s[end if] before you can use your enslaving ability again." instead.		

Status skill rule (this is the mind slug power status skill rule):
	if power of the mindslug is granted:
		say "You can attempt to [bold type]enslave[roman type] an enemy. This ability has a cooldown. [italic type](Level 3)[roman type][line break][run paragraph on]".




Section - Attacking your slaves

A person can be betrayed. A person is usually not betrayed.

[Making sure that attacking a slave is possible and makes him betrayed is done in Kerkerkruip ATTACK Additions.]

An attack modifier rule (this is the betrayal attack modifier rule):
	if the global defender is betrayed:
		if the numbers boolean is true, say " + 6 (betrayed by [master])[run paragraph on]";
		increase the attack strength by 6.

A damage modifier rule (this is the betrayel damage bonus rule):
	if the global defender is betrayed:
		if the numbers boolean is true, say " + 4 (betrayed by [master])[run paragraph on]";
		increase the attack damage by 4.

AI action selection rule for a person (called P) (this is the betrayed people always wait rule):
	if P is betrayed:
		choose row with an Option of the action of P waiting in the Table of AI Action Options;
		now the Action Weight entry is 1000.

An aftereffects rule (this is the remove betrayed rule):
	if the global defender is betrayed:
		now the global defender is not betrayed;
		release slaves.

[BUG: betraying when not in combat.]

Instead of an actor waiting when the actor is betrayed:
	say "[The actor] does not suspect your betrayal.".



Chapter - Level 3 - Giant tentacle

The giant tentacle is a monster. "A single giant tentacle guards against intruders."

The description of the giant tentacle is "Aeons ago, the Knight of the Dawn fought and killed a great tentacled horror known as Tooloo. So great was Tooloo's tenacity, however, that each of his tentacles continued to live on separately -- and this is one of them.".

The level of giant tentacle is 3.

The health of giant tentacle is 35.
The melee of giant tentacle is 4.
The defence of giant tentacle is 10.

The body score of giant tentacle is 8.
The mind score of giant tentacle is 10.
The spirit score of giant tentacle is 6. 

When play begins:
	let X be a random natural weapon part of giant tentacle;
	now printed name of X is "tentacle";
	now the damage die of X is 0.

The giant tentacle is eyeless.

Section - The tentacle grapples

Grappling relates one person to another. The verb to grapple (he grapples, they grapple, he grappled, it is grappled, he is grappling) implies the grappling relation. 

A contact rule when the global attacker is the giant tentacle (this is the tentacle grapples rule):
	say "The giant tentacle [bold type]wraps itself around[italic type] [the global defender]!";
	now giant tentacle grapples the global defender.

An AI action selection rule for the at-Act giant tentacle (this is the tentacle attacks only when not grappling rule):
	choose row with an Option of the action of the giant tentacle attacking the chosen target in the Table of AI Action Options;
	if the giant tentacle grapples the chosen target:
		decrease the Action Weight entry by 1000;
	otherwise:
		increase the Action Weight entry by 3.

An AI target selection rule for a person (called target) when the running AI is the giant tentacle (this is the tentacle prefers the grappled person rule):
	if the giant tentacle grapples the target and the target is not the giant tentacle:
		increase the Weight by 1000;

Check going (this is the cannot go when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to run away!" instead.

Check wearing (this is the cannot wear when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to fiddle with your clothing." instead.

Check taking off (this is the cannot take off when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to fiddle with your clothing." instead.

Check taking (this is the cannot take when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to reach [the noun]." instead.

Check entering (this is the cannot enter when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to move." instead.

Check exiting (this is the cannot exit when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to move." instead.

Check taking inventory (this is the cannot take inventory when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		take no time;
		say "Caught in [the X], you are unable to get a good look at your possessions!" instead.
		
Check attacking (this is the cannot attack when grappled rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		unless the noun is X:
			take no time;
			say "Caught in [the X], you are unable to attack anyone else." instead.
	
An aftereffects rule (this is the tentacle lets go when damaged rule):
	if the global defender is the giant tentacle and the attack damage is greater than 0:
		if the giant tentacle grapples someone and the giant tentacle is alive:
			let X be a random person grappled by the giant tentacle;
			say "Recoiling in pain, the giant tentacle [bold type]lets go[roman type] of [the X].";
			now giant tentacle does not grapple X;
			now constriction level is 0.

Every turn (this is the reset grappling after going rule):
	if the location of the player is not the location of the giant tentacle:
		now constriction level is 0;
		if the giant tentacle grapples someone:
			let X be a random person grappled by the giant tentacle;
			now giant tentacle does not grapple X.

Status rule (this is the grappled status rule):
	if at least one person grapples the player:
		let X be a random person grappling the player;
		say "You are [bold type]grappled[roman type] by [the X].[line break][run paragraph on]".
		
A sudden combat reset rule (this is the sudden grapple reset rule):
	repeat with guy running through alive persons in the location:
		while someone grapples guy:
			let X be a random person grappling guy;
			now X does not grapple guy.

An impeded movement rule (this is the being grappled impedes movement rule):
	if someone grapples the test subject:
		rule fails.

A detection rule (this is the cannot hide when grappled rule):
	if someone grapples the player:
		increase detection probability by 1000.

Section - and the tentacle constricts

Tentacle-constricting is an action applying to nothing.

Constriction level is a number that varies. Constriction level is 0.

An AI action selection rule for the at-Act giant tentacle (this is the tentacle considers constricting rule):
	if the giant tentacle grapples the chosen target:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the giant tentacle tentacle-constricting;
		now the Action Weight entry is 15;

Clothing has a number called the constriction prevention. The constriction prevention of clothing is usually 0.

Definition: clothing (called item) is constriction-preventing if the constriction prevention of item is greater than 0.

Carry out the giant tentacle tentacle-constricting:
	increase constriction level by 1; [constricts tighter]
	let n be constriction level;
	let m be 0;	
	let preventer be a random clothing;
	if the chosen target wears at least one constriction-preventing clothing:
		let i be 0;
		repeat with item running through clothing worn by the chosen target:
			increase m by constriction prevention of item;
			unless i is greater than constriction prevention of item:
				now preventer is item;
			now i is constriction prevention of item; [at the end of the repeat, preventer is the item with the largest constriction prevention]
	if n is greater than m: [constriction prevention < constriction level: normal damage]
		decrease health of the chosen target by constriction level;
		if m is greater than 0:
			remove preventer from play; [and the preventing item gets smashed]
		say "The giant tentacle tightens its muscles, dealing [bold type][constriction level] damage[roman type] to [the name of the chosen target].[if m is greater than 0] [The preventer] get[s] smashed in the process[end if]";
		if the chosen target is dead:
			have an event of the giant tentacle killing the chosen target;
		if the player is dead:
			end the story saying "You suffocate in the tentacle's deadly embrace.";
	otherwise: [constriction prevention >= constriction level: no damage]
		say "The giant tentacle tightens its muscles, but the [preventer] protect[s] [the chosen target] against the pressure.".

Section - and the tentacle shakes

Tentacle-shaking is an action applying to nothing.
		
An AI action selection rule for the at-React giant tentacle (this is the tentacle shakes when attacked and grappling rule):
	if the giant tentacle grapples the main actor:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the the giant tentacle tentacle-shaking;
		now the Action Weight entry is 15 plus 5 times the concentration of the main actor;

Carry out the giant tentacle tentacle-shaking:
	say "The giant tentacle vigourously shakes [the main actor] while projecting the horrifying image of Tooloo.[italic type] [run paragraph on]";
	let n be 12;
	test the mind of the main actor against n; 
	say "[roman type]";
	if test result is true:
		say " [The main actor] remain[s] [if the concentration of the main actor is greater than 0]concentrated[otherwise]sharp[end if].";
	otherwise:
		say " [The main actor] [is-are] horrified and confused![run paragraph on]";
		now the main actor is tentacle-confused;
		if the concentration of the main actor is greater than 0:
			say " [run paragraph on]";
			let the main actor lose concentration;
		otherwise:
			say "[paragraph break]".

A person can be tentacle-confused. A person is usually not tentacle-confused.

An attack modifier rule (this is the tentacle-confused attack modifier rule):
	if the global attacker is tentacle-confused:
		say " - 2 (confused)[run paragraph on]";
		decrease the attack strength by 2.	

Chance to win rule when the global attacker is tentacle-confused (this is the CTW confusion penalty rule):
	decrease the chance-to-win by 2.

Aftereffects rule when the global attacker is tentacle-confused (this is the no longer tentacle-confused after attacking rule):
	say "[The global attacker] [is-are] no longer confused.";
	now the global attacker is not tentacle-confused.

Status rule (this is the tentacle-confused status rule):
	if the player is tentacle-confused:
		say "You are [bold type]confused[roman type] by the giant tentacle, which gives you a -2 attack penalty on your next attack.[line break][run paragraph on]".



Section - Tentacle prose

Report an actor hitting the dead giant tentacle:
	say "The giant tentacle crashes down, never to rise again.";
	rule succeeds.

Report the giant tentacle hitting a dead pc:
	say "Even though Tooloo was slain in times immemorial, his appendages still claim victims today.";
	rule succeeds.

Report the giant tentacle attacking:
	unless the actor is the noun:
		say "The giant tentacle moves in to grab [the noun].";
	otherwise:
		say "The tentacle attempts to tie itself into a knot.";
	rule succeeds.

Report the giant tentacle dodging:
	say "The giant tentacle tries to avoid the blow.";
	rule succeeds.
	
Report giant tentacle waiting when giant tentacle is insane:
	say "The giant tentacle tries to hide by imitating a leaf of grass.";
	rule succeeds.	

[ This is almost the same as the standard show the attack damage dealt rule, except with the option to mention that the tentacle still holds on to the defender. ]
Last damage multiplier rule when the global attacker is the giant tentacle (this is the show the damage dealt by the giant tentacle rule):
	say " = [bold type]", the attack damage, " damage[roman type][italic type], ";
	if the attack damage is less than 1: [no damage]
		unless the giant tentacle grapples the global defender:
			say "allowing [the global defender] to escape unscathed.[run paragraph on]";
		otherwise:
			say "but holds on to [the global defender].[run paragraph on]";
	otherwise:
		if the attack damage is less than the health of the global defender: [non-fatal]
			say "wounding [the global defender] to ", health of the global defender minus the attack damage, " health.[run paragraph on]" ;
		otherwise: [fatal]
			say "killing [the name of the global defender].[run paragraph on]";
	say "[roman type][paragraph break]";
	rule succeeds.
The standard show the attack damage dealt rule is listed after the show the damage dealt by the giant tentacle rule in the damage multiplier rules.



Section - Power of the Tentacle

The power of the tentacle is a power. Giant tentacle grants power of the tentacle.
The power level of power of the tentacle is 3.
The command text of power of the tentacle is "sprout".

Absorbing power of the tentacle:
	increase melee of the player by 3;
	increase defence of the player by 3;
	increase permanent health of the player by 15;
	say "As the giant tentacle dies, you feel its soul absorbed into your own body. ([bold type]Power of the tentacle[roman type]: +3 attack, +3 defence, +15 health, and you can [italic type]sprout[roman type] horrific tentacles that may make your opponents go insane.)[paragraph break]".

Repelling power of the tentacle:
	decrease melee of the player by 3;
	decrease defence of the player by 3;
	decrease permanent health of the player by 15.
	
Status skill rule (this is the tentacle power status skill rule):
	if power of the tentacle is granted:
		say "You can [bold type]sprout[roman type] between 1 and 4 tentacles, a horrifying spectacle that may make other creatures go crazy. [italic type](Level 3)[roman type][line break][run paragraph on]".
	


Section - Sprouting

Sprouting is an action applying to one number. Understand "sprout [a number]" as sprouting.

Unnumbered sprouting is an action applying to nothing. Understand "sprout" as unnumbered sprouting.

Instead of unnumbered sprouting:
	take no time;
	say "You need to indicate how many tentacles you want to sprout by typing 'sprout 1', 'sprout 2', 'sprout 3' or 'sprout 4'. The more tentacles you sprout, the more powerful the effects -- but you will also lose more of your mind score."

Check sprouting:
	if power of the tentacle is not granted:
		take no time;
		say "You do not possess that power." instead.


Check sprouting:
	if the number understood is less than 1 or the number understood is greater than 4:
		take no time;
		say "You can only sprout 1, 2, 3 or 4 tentacles." instead.

Carry out sprouting:
	let n be the number understood;
	say "[if n is 1]A horrible tentacle sprouts[end if][if n is 2]Two[otherwise if n is 3]Three[otherwise if n is 4]Four[end if][if n is not 1] horrible tentacles sprout[end if] from your body! This spectacle was not meant to be seen by mortal eyes, and your mind score decreases by [n] points.[paragraph break]";
	repeat with guy running through people in the location:
		unless guy is the player:
			if guy is insane:
				say "[The guy] has already gone insane, so the tentacles have no further effect.[paragraph break]";
			otherwise:
				let m be 4 + (4 * n) - (health of the guy / 3) + (concentration of the player);
				if m is less than 1:
					now m is 1;
				test the mind of the guy against m;
				if test result is true:
					say " Sanity is maintained.[run paragraph on]";
				otherwise:
					say " [The guy] goes [bold type]insane[roman type]![run paragraph on]";
					now faction of the guy is insane;
				if n is greater than 1:
					if concentration of guy is greater than 0:
						now concentration of guy is 0;
						say " [The guy] [bold type]loses concentration[roman type].[run paragraph on]";
				if n is greater than 2 or guy is insane:
					if combat state of player is at-react:
						repeat through Table of Delayed Actions:
							if the action entry is the action of the guy hitting the player:
								blank out the whole row;
				if n is greater than 3:
					if stun count of the guy is less than 6:
						say " [The guy] is [bold type]stunned[roman type]![run paragraph on]";
						now the stun count of the guy is 6;
						now stun strength of the global defender is 4;
				say "[paragraph break]";
	now concentration of the player is 0;
	decrease mind score of the player by n;
	if mind score of the player is less than 1:
		end the story saying "That was too unspeakable for your mind to bear!".




Chapter - Level 3 - Minotaur

The minotaur is a male monster. "A huge minotaur[if the minotaur carries the minotaur's axe], carrying a huge axe,[end if] stands ready for combat."

The description of the minotaur is "Half man, half bull, this fearsome creature is associated by legends with two things: axes and mazes.".

The level of the minotaur is 3.
Difficulty level of the minotaur is 2.

The health of minotaur is 35.
The melee of minotaur is 4.
The defence of minotaur is 10.

The body score of minotaur is 10.
The spirit score of minotaur is 6. 
The mind score of minotaur is 6.

When play begins:
	let X be a random natural weapon part of minotaur;
	now printed name of X is "minotaur's fist";
	now the damage die of X is 6.

Minotaur is a weapon user.

Section - Minotaur's axe

The minotaur's axe is an axe. The description of the minotaur's axe is "A huge axe covered in mystic runes.".
The minotaur carries the minotaur's axe. The minotaur's axe is readied.

The damage die of the minotaur's axe is 6.
The weapon attack bonus of the minotaur's axe is -3.
The weapon damage bonus of the minotaur's axe is 3.
The dodgability of the minotaur's axe is 3.
The passive parry max of the minotaur's axe is 0.
The active parry max of the minotaur's axe is 1.

An attack modifier rule:
	if the location of the global attacker is the maze and the global attacker weapon is the minotaur's axe:
		say " + 3 (minotaur's axe stronger in the maze)[run paragraph on]";
		increase the attack strength by 3.
	
The special weapon info of the minotaur's axe is "; when damage is dealt and the wielder has the power of the minotaur, casts attacker and defender in a magical maze[run paragraph on]".

Last aftereffects rule (this is the minotaur's axe maze rule):
	if the global attacker weapon is the minotaur's axe:
		if the global attacker is the minotaur or (the global attacker is the player and the power of the minotaur is granted):
			if the attack damage is greater than 0:
				if the location of the player is not the maze:
					maze the actor and the noun.

Section - Minotaur prose

Report an actor hitting the dead minotaur:
	say "Moaning plaintively, the minotaur expires.";
	rule succeeds.

Report the minotaur hitting a dead pc:
	say "Unlike Theseus, you could not best the minotaur.";
	rule succeeds.

Report the minotaur attacking:
	unless the actor is the noun:
		say "With a fearsome bellow, the minotaur swings at [the noun].";
	otherwise:
		say "The minotaur swings at himself.";
	rule succeeds.

Report the minotaur dodging:
	say "The minotaur lumbers aside.";
	rule succeeds.

Report the minotaur waiting when the minotaur is insane:
	say "The minotaur speaks in a voice that you can barely understand. 'I must escape!' he says.";
	rule succeeds.


Section - Power

The power of the minotaur is a power. The minotaur grants power of the minotaur.
The power level of power of the minotaur is 3.
The command text of power of the minotaur is "axe proficiency".

Absorbing power of minotaur:
	increase melee of the player by 3;
	increase defence of player by 2;
	increase permanent health of the player by 17;
	say "As the minotaur dies, you feel its soul absorbed into your own body. ([bold type]Power of the minotaur[roman type]: +3 attack,  +2 defence, +17 health; ability to use the minotaur's axe; faculty bonus in the maze; 10% chance of dealing 10 bonus damage when attacking with an axe.)[paragraph break]".

A damage modifier rule (this is the power of the minotaur damage bonus rule):
	if the power of the minotaur is granted and the actor is the player and the global attacker weapon is an axe:
		let n be final body of the player;
		if a random chance of n in 100 succeeds:
			if the numbers boolean is true, say " + 10 (axe proficiency)[run paragraph on]";
			increase the attack damage by 10.

A faculty bonus rule (this is the power of the minotaur faculty bonus rule):
	if location of the test subject is the maze:
		if test subject is the player and the power of the minotaur is granted:
			increase faculty bonus score by 3.

Repelling power of minotaur:
	decrease melee of the player by 3;
	decrease defence of player by 2;
	decrease permanent health of the player by 17.

Status skill rule (this is the minotaur power status skill rule):
	if power of minotaur is granted:
		say "Your [bold type]axe proficiency[roman type] gives you a (your body)% chance of dealing 10 bonus damage when attacking with an axe. You can also use the special power of the minotaur's axe, and are stronger in the maze. [italic type](Level 3)[roman type][line break][run paragraph on]".






Chapter - Level 4 - Fanatics of Aite 

The fanatics-of-Aite-package is a monster. The level of the fanatics-of-Aite-package is 4.

Final monster placement rule (this is the place fanatics of Aite rule):
	if fanatics-of-Aite-package is not off-stage:
		let X be the location of fanatics-of-Aite-package;
		move healer of Aite to X;
		move tormentor of Aite to X;
		move defender of Aite to X;
		remove fanatics-of-Aite-package from play. 

Section - Healer of Aite

A healer of Aite is a male monster. The healer of Aite is not neuter. "A white-robed healer of Aite is chanting in praise of his goddess."
Understand "white-robed" as the Healer of Aite.
The description of the healer of Aite is "This white-robed priest is a healer of Aite. Their task is to support the other fanatics in their never-ending crusade.".

The health of the Healer of Aite is 20.
The melee of the Healer of Aite is 1.
The defence of the Healer of Aite is 8.

The body score of Healer of Aite is 10.
The mind score of Healer of Aite is 9.
The spirit score of Healer of Aite is 9. 

The group level of the Healer of Aite is 4.

Heal power of the healer of Aite is 5.
The healer of Aite is Aite-loved.
The healer's sword is a readied sword. The healer of Aite carries the healer's sword. The description of the healer's sword is "Just a plain sword.".

Healer of Aite is weapon user.

When play begins:
	let X be a random natural weapon part of healer of Aite;
	now printed name of X is "healer's fists".

Report an actor hitting the dead healer of Aite:
	say "The healer stares in disbelief at his fatal wounds before he topples over.";
	rule succeeds.

Report the healer of Aite hitting a dead pc:
	say "'Aite be praised!' These are the last words you hear as the healer's sword penetrates your heart.";
	rule succeeds.

Report the healer of Aite attacking:
	unless the actor is the noun:
		say "The healer pokes his sword at [the noun].";
	otherwise:
		say "'My head has offended me,' the healer announces. 'It must be cut off.'";
	rule succeeds.

Report the healer of Aite dodging:
	say "'Save me, great Aite!' the healer exclaims as he attempts to duck away.";
	rule succeeds.
	
Report healer of Aite waiting when healer of Aite is insane:
	say "The healer puts his hand together as if to pray, then says: 'Pancakes, please'.";
	rule succeeds.	

Section - Tormentor of Aite

A tormentor of Aite is a female monster. The tormentor of Aite is not neuter. "A black-robed mage stalks through the room."
Understand "black-robed" and "mage" as the Tormentor of Aite.
The description of the tormentor of Aite is "You immediately recognise the black-robed mage as a tormentor of Aite, savage priests who specialise in inflicting pain on all who oppose their faith.".

The health of the Tormentor of Aite is 16.
The melee of the Tormentor of Aite is 3.
The defence of the Tormentor of Aite is 9.

The body score of Tormentor of Aite is 8.
The mind score of Tormentor of Aite is 8.
The spirit score of Tormentor of Aite is 12. 

The group level of the Tormentor of Aite is 4.

The tormentor of Aite is Aite-loved.
The tormentor's staff is a readied staff of pain. The tormentor of Aite carries the tormentor's staff. The description of the tormentor's staff is "This staff of pain wounds with magic that can be neither parried nor dodged.".

Tormentor of Aite is weapon user.

When play begins:
	let X be a random natural weapon part of tormentor of Aite;
	now printed name of X is "tormentor's fists".

Report an actor hitting the dead tormentor of Aite:
	say "The tormentor cries in pain and rage as her body's vital functions fail.";
	rule succeeds.

Report the tormentor of Aite hitting a dead pc:
	say "'Aite be praised!' These are the last words you hear as magical pain racks your body.";
	rule succeeds.

Report the tormentor of Aite attacking:
	unless actor is the noun:
		say "The tormentor raises her staff towards [the noun], preparing a magical attack.";
	otherwise:
		say "The tormentor tries to put her staff in a place where the sun doesn't shine.";
	rule succeeds.

Report the tormentor of Aite dodging:
	say "'You will never get me!' the tormentor exclaims as she attempts to duck away.";
	rule succeeds.
	
Report the tormentor of Aite waiting when the tormentor of Aite is insane:
	say "'I never wanted to be a tormentor,' the priestess says. 'I wanted to be a [one of]goose girl[or]lumberjack[or]mother[at random]!' Tears stream down her face.";
	rule succeeds.	

Section - Defender of Aite

A defender of Aite is a male monster. The defender of Aite is not neuter. "Equipped with a small sword and a huge shield, a heavily armoured man awaits any attacks."
Understand "armoured" and "man" as the defender of Aite.
The description of the defender of Aite is "This heavily armoured priest is a defender of Aite, one of the front-line troops of the armies of this horrible faith.".

The health of the Defender of Aite is 23.
The melee of the Defender of Aite is 1.
The defence of the Defender of Aite is 12.

The body score of Defender of Aite is 12.
The mind score of Defender of Aite is 10.
The spirit score of Defender of Aite is 8. 

The group level of the Defender of Aite is 4.

The defender of Aite is Aite-loved.
The defender's sword is a readied sword. The defender of Aite carries the defender's sword. The description of the defender's sword is "Just a plain sword.".

Defender of Aite is weapon user.

When play begins:
	let X be a random natural weapon part of defender of Aite;
	now printed name of X is "defender's fists".

Report an actor hitting the dead defender of Aite:
	say "The defender falls to the ground with a smash, never to stand up again.";
	rule succeeds.

Report the defender of Aite hitting a dead pc:
	say "'Aite be praised!' These are the last words you hear as the defender hacks you apart.";
	rule succeeds.

Report the defender of Aite attacking:
	unless the actor is the noun:
		say "The defender starts lumbering towards [the noun].";
	otherwise:
		say "'Do you think this wil hurt?' the defender asks as he attacks himself.";
	rule succeeds.

Report the defender of Aite parrying:
	say "The soldier raises his shield to stop the attack.";
	rule succeeds.

Report the defender of Aite dodging:
	say "The soldier attempts to jump away, using his shield for additional cover.";
	rule succeeds.
	
Report the defender of Aite waiting when the defender of Aite is insane:
	say "The defender licks his shield.";
	rule succeeds.	

Section - Power of the Fanatics of Aite

The power of the Fanatics of Aite is a power. fanatics-of-Aite-package grants power of Fanatics of Aite.
The power level of power of the Fanatics of Aite is 4.
The command text of power of the fanatics of Aite is "pray".

The fanatics power boolean is a truth state that varies. The fanatics power boolean is false.

Every turn (this is the grant fanatics of power boolean rule):
	if healer of Aite is dead and Tormentor of Aite is dead and Defender of Aite is dead:
		if fanatics power boolean is false:
			now fanatics power boolean is true;
			say "Impressed with your prowess in combat, Aite grants you her favour! ([bold type]Power of the fanatics of Aite[roman type]: +4 attack, +4 defence, +20 health, pray to Aite anywhere and for better effects.)[paragraph break]";
			gain the power of the fanatics of Aite. 

To gain the power of the Fanatics of Aite:
	increase score by 4;
	now test subject is fanatics-of-Aite-package;
	unless absorption is stopped:
		do power transferral with fanatics-of-Aite-package;
		heal fully because fanatics-of-Aite-package is slain;
	do achievement awarding for the fanatics-of-Aite-package.
	
Absorbing power of the Fanatics of Aite:
	increase melee of the player by 4;
	increase defence of the player by 4;
	increase permanent health of the player by 20.

Repelling power of the Fanatics of Aite:
	decrease melee of the player by 4;
	decrease defence of the player by 4;
	decrease permanent health of the player by 20.

Status skill rule (this is the fanatics of aite status skill rule):
	if power of the fanatics of aite is granted:
		say "You have the power of the fanatics of Aite, which allows you to [bold type]pray[roman type] to the goddess even when you are not in her temple. This power does not work in the temples of other gods. [italic type](Level 4)[roman type][line break][run paragraph on]".

Section - Praying when Aite power is granted

A beloved of Aite rule (this is the aite loves the bearer of her power rule):
	if test subject is the player and power of the fanatics of aite is granted:
		rule succeeds.

First check praying:
	if the power of the fanatics of aite is granted:
		if the location is not consecrated:
			do the Aite prayer instead.







Chapter - Level 4 - Bodmall

Bodmall is a monster. Bodmall is proper-named. Bodmall is female and not neuter. "A pale druidess stands here, murmuring to herself in a language you have never heard." The description of Bodmall is "Why the great druidess Bodmall has chosen to work together with Malygris is a subject of much speculation among scholars of the occult -- but here she is, standing between you and victory. She is a very powerful foe.".

Understand "druid" and "druidess" and "witch" as Bodmall.

The level of Bodmall is 4.

The health of Bodmall is 35.
The melee of Bodmall is 5.
The defence of Bodmall is 12.

The body score of Bodmall is 10.
The mind score of Bodmall is 9.
The spirit score of Bodmall is 9. 

When play begins:
	let X be a random natural weapon part of Bodmall;
	now X is ranged;
	now X is size-agnostic;
	now X is not armour-stoppable;
	now damage die of X is 10;
	now the passive parry max of X is 0;
	now the active parry max of X is 0;
	now the dodgability of X is 3;
	now printed name of X is "lightning bolt".



Section - Bodmall's lightning attack

[Mostly this is just prose, except --]

An attack modifier rule (this is the do not parry with metal weapons against Bodmall's lightning attack rule):
	if the global attacker is Bodmall and the global defender is at parry:
		if the global defender weapon is iron:
			if the numbers boolean is true:
				say " + 3 ([global defender weapon] acts as a lightning rod)[run paragraph on]";
			increase the attack strength by 3;
		if the global defender weapon is silver:
			if the numbers boolean is true:
				say " + 5 ([global defender weapon] acts as a lightning rod)[run paragraph on]";
			increase the attack strength by 5.

A damage modifier rule (this is the iron or silver suit acts as a faraday cage rule):
	if the global attacker is Bodmall:
		if the global defender wears an iron suit or the global defender wears a silver suit:
			let X be a random suit worn by the global defender;
			if the numbers boolean is true:
				say " - 3 ([the X] acts as a Faraday cage)[run paragraph on]";
			decrease the attack damage by 3.



Section - Bodmall power - Barkskin

Bodmall-barkskinning is an action applying to nothing.

An AI action selection rule for Bodmall (this is the Bodmall considers barkskinning rule):
	if Bodmall is not barkskinned:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the Bodmall Bodmall-barkskinning;
		now the Action Weight entry is a random number between -10 and 20;

Carry out Bodmall Bodmall-barkskinning:
	say "Bodmall chants loudly, and her [bold type]skin[roman type] transforms and toughens. It now looks like the bark of a tree.";
	now Bodmall is barkskinned.

A person can be barkskinned. A person is usually not barkskinned.

A damage modifier rule (this is the barkskin decreases damage rule):
	if the global defender is barkskinned:
		unless the global attacker weapon is an axe:
			if the numbers boolean is true, say " - 1 (barkskin)[run paragraph on]";
			decrease the attack damage by 1.

Barkskin is a part of Bodmall. Understand "skin" and "bark" as barkskin.

The description of barkskin is "Bodmall's skin looks [if Bodmall is barkskinned]tough and tree-like[otherwise]perfectly normal[end if].".

Section - Bodmall power - Brambles


Bodmall-summoning is an action applying to nothing.

An AI action selection rule for Bodmall (this is the Bodmall considers summoning thorns rule):
	if brambles are not in the location:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of Bodmall Bodmall-summoning;
		now the Action Weight entry is a random number between -100 and 35.

Carry out Bodmall Bodmall-summoning:
	say "Bodmall makes several complicated gestures, and [bold type]brambles[roman type] come out of the ground everywhere around you!";
	move brambles to the location.

An AI action selection rule for Bodmall (this is the Bodmall considers launching rule):
	if brambles are in the location and brambles strength is greater than 1:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of Bodmall launching;
		now the Action Weight entry is -10;
		increase Action Weight entry by ((2 * brambles strength) + brambles duration).


Section - Bodmall prose

Report an actor hitting the dead Bodmall:
	say "'I will haunt you come Samhain!', whispers Bodmall as her body returns to the earth.";
	rule succeeds.

Report Bodmall hitting a dead pc:
	if the player is undead:
		say "Bodmall kneels over your corpse. 'The undead are a blight on this world, and they will be destroyed,' she says.";
	otherwise:
		say "Bodmall kneels over your corpse. 'Death is but a stage in the cycle of Nature,' she says.";
	rule succeeds.

Report Bodmall attacking:
	unless the actor is the noun:
		say "Bodmall throws her hands forward, casting a lightning bolt at [the noun].";
	otherwise:
		say "'I need a new thrill, and you aren't going to give it to me' Bodmall tells you as she throws a lightning bolt at herself.";
	rule succeeds.

Report Bodmall dodging:
	say "Gracefully, Bodmall attempts to glide out of the way.";
	rule succeeds.

Report Bodmall waiting when Bodmall is insane:
	say "'Though I shall fall as the harvest corn, it is my fate, I'm pagan born!' Bodmall sings.";
	rule succeeds.


Section - Power of Bodmall

The power of Bodmall is a power. Bodmall grants power of Bodmall.
The power level of power of Bodmall is 4.
The command text of power of Bodmall is "[if brambles are not in the location]brambles[otherwise]launch[end if]".

The druid is a person that varies. The druid is Bodmall. [The person whose scores determine how the brambles work.]
	
Absorbing power of Bodmall:
	increase melee of the player by 4;
	increase defence of the player by 4;
	increase permanent health of the player by 20;
	say "As Bodmall dies, you feel her soul absorbed into your own body. ([bold type]Power of Bodmall[roman type]: +4 attack, +4 defence, +20 health, and you can summon [italic type]brambles[roman type].) In addition, a staff suddenly appears in your inventory.[paragraph break]";
	now the player carries the druidic staff;
	now the druid is the player.

Repelling power of Bodmall:
	decrease melee of the player by 4;
	decrease defence of the player by 4;
	decrease permanent health of the player by 20;
	remove the brambles from play.

Status skill rule (this is the Bodmall status skill rule):
	if power of Bodmall is granted:
		say "You have the power of Bodmall, which allows you to summon [bold type]brambles[roman type] that will impede most enemies; once the brambles grow thorns and fruits, you can also [bold type]launch[roman type] these. [italic type](Level 4)[roman type][line break][run paragraph on]".

Section - Druidic staff

The druidic staff is a weapon.

The description of druidic staff is "A simple wooden staff, but very well balanced.".

The druidic staff is wood.

The damage die of the druidic staff is 6.
The weapon attack bonus of the druidic staff is 1.
The dodgability of the druidic staff is 2.
The active parry max of the druidic staff is 3.
The passive parry max of the druidic staff is 2.
The weapon damage bonus of the druidic staff is 1.

Section - Druidic

Definition: a person (called the guy) is druidic if the guy is bodmall or (the guy is the player and power of bodmall is granted).

A smoke immunity rule (this is the smoke immune if druidic rule):
	if test subject is druidic:
		rule succeeds.

An attack modifier rule (this is the druid using wooden weapon attack modifier rule):
	if the global attacker is druidic and the global attacker weapon is wood:
		say " + 1 (druid using wooden weapon)[run paragraph on]";
		increase attack strength by 1.		
	

Chapter - The brambles

The brambles duration is a number that varies. The brambles duration is 0.
The brambles strength is a number that varies. The brambles strength is 0.

Section - The brambles object

The brambles are a thing. "Huge brambles are everywhere." The brambles are plural-named and fixed in place. Understand "bush" and "thorn" and "thorns" and "huge" and "brambles" and "bramble" as the brambles.

The description of the brambles is "Moving through these brambles is possible, but will not be easy[if the power of Bodmall is granted], except for you[end if][if brambles strength is not 0]. There are [thorns size] thorns all over the bushes[end if][if at least one fruit is part of the brambles]. There are also [list of fruits that are part of the brambles] hanging on the branches[end if].".

Instead of climbing the brambles:
	try entering the brambles.

Instead of entering the brambles:
	take no time;
	say "The brambles are neither thick nor high enough to give you a good hiding spot.".

Instead of taking the brambles:
	say "They seem to be rooted to the spot.".

Section - Standard attack modifier effect of brambles

An attack modifier rule (this is the brambles attack modifier rule):
	if the brambles are in the location:
		unless the global attacker is druidic or the global attacker is flying:
			let W be a random readied weapon held by the actor;
			unless W is ranged:
				say " - 2 (brambles impede movement)[run paragraph on]";
				decrease attack strength by 2;
	if the global defender is the player and the brambles are in the location:
		if the player is retreater or the player is runner:		
			unless the power of Bodmall is granted:
				say " + 2 (you are slowed down by the brambles)[run paragraph on]";
				increase the attack strength by 2.
				
Section - Summoning brambles

Summoning brambles is an action applying to nothing. Understand "brambles" and "bramble" and "summon brambles" as summoning brambles.

Check summoning brambles:
	if power of Bodmall is not granted:
		take no time;
		say "You do not possess that power." instead.

Check summoning brambles:
	if the brambles are in the location:
		take no time;
		say "The brambles are already here. (Perhaps you mean to use the [italic type]launch[roman type] ability instead?)" instead.

Carry out summoning brambles:
	say "You speak the ancient syllables, and brambles grow out of the ground everywhere around you!";
	move brambles to the location;
	now brambles duration is 0;
	now brambles strength is 0.

Section - Unsummoning brambles

Every turn when brambles are not off-stage:
	if combat status is peace:
		if brambles are in the location of the player:
			say "The brambles [bold type]wither and die[roman type].";
		remove brambles from play.
	
Section - Growing the brambles

Every turn when the main actor is druidic:
	if the brambles are in the location:
		increase brambles duration by 1;
		let n be brambles duration;
		if n is greater than 20:
			now n is 20;
		if brambles duration is greater than 2 and brambles strength is 0:
			if a random chance of 1 in 2 succeeds or a random chance of final body of the druid in 30 succeeds:
				now brambles strength is 1;
				say "The brambles grow [bold type]tiny thorns[roman type]!";
		otherwise if brambles strength is greater than 0:
			if a random chance of n in 20 succeeds:
				do a fruit grow;
			otherwise:
				do a thorns grow.

To do a thorns grow:
	if a random chance of brambles strength in 8 succeeds:
		unless brambles strength is less than 3:
			unless a random chance of final body of the druid in 20 succeeds:
				decrease brambles strength by 1;
				say "The thorns on the brambles [bold type]wilt[roman type] and grow smaller.";
	otherwise:
		unless brambles strength is 5:
			increase brambles strength by 1;
			say "The thorns on the brambles [bold type]grow[roman type].".


Section - Saying the thorns size

To say thorns size:
	if brambles strength is:
		-- 0:
			say "no[run paragraph on]";
		-- 1:
			say "tiny[run paragraph on]";
		-- 2:
			say "small[run paragraph on]";			
		-- 3:
			say "medium[run paragraph on]";
		-- 4:
			say "large[run paragraph on]";
		-- 5:
			say "terrible[run paragraph on]".

Section - Launch!


Launching is an action applying to nothing. Understand "launch" as launching.

Check launching:
	if power of Bodmall is not granted:
		take no time;
		say "You do not possess that power." instead.

Check launching:
	if the brambles are not in the location:
		take no time;
		say "The brambles aren't here yet. (Perhaps you mean to use the [italic type]bramble[roman type] ability instead?)" instead.

Check launching:
	if brambles strength is less than 1:
		take no time;
		say "The brambles have no thorns or fruit yet." instead.
		
Check launching:
	if the number of alive not druidic persons in location is 0:
		take no time;
		say "There's nobody to launch the thorns at." instead.

Carry out an actor launching:
	say "[if the actor is the player]You raise your hands[otherwise if the actor is Bodmall]The druidess raises her hands[otherwise][The actor] gestures[end if], and the brambles [bold type]launch[roman type] their deadly thorns![paragraph break]";
	launch the thorns;
	launch fruit;
	now brambles duration is 0;
	now brambles strength is 0.

To launch the thorns:
	say "Thorns shoot towards everyone, dealing [run paragraph on]";
	let n be the number of alive not druidic persons in location;
	if n is 0:
		say "no damage to anyone.";
	let original n be n;
	let concentest be false;
	repeat with guy running through all alive not druidic persons in location:
		let m be a random number between 1 and brambles strength;
		calculate the pdr for guy;
		decrease m by pdr;
		if m is less than 0, now m is 0;			
		decrease health of guy by m;
		now concentest is false;
		if concentration of the guy is greater than 0 and guy is alive and m is not 0:
			if a random chance of brambles strength in 5 succeeds:
				now concentration of the guy is 0;
				now concentest is true;
		say "[if n is 1 and original n is not 1]and [end if][m] damage to [the name of the guy][if guy is dead] (which is [bold type]lethal[roman type])[end if][roman type][if concentest is true] (which breaks [possessive of the guy] concentration)[end if][if n is not 1]; [otherwise].[line break][end if][run paragraph on]";
		decrease n by 1;
		if n is 0:
			say ""; [For an extra newline. Don't ask.]
	if health of the player is less than 1:
		end the story saying "You have been pricked to death.".

Fruit-launching is an object based rulebook.

To launch fruit:
	repeat with whatsname running through fruit:
		if whatsname is part of the brambles:
			follow the fruit-launching rulebook for whatsname;
			remove whatsname from play.


Section - Fruit

A fruit is a kind of thing. A fruit is usually plural-named.
A fruit has a number called the growth threshold.
A fruit can be player-only. [Grow only when the player is the druid.]

Definition: a fruit (called the whatsname) is growable if (growth threshold of whatsname is less than (brambles duration + (final body of the druid / 3))).

To do a fruit grow:
	if at least one fruit is growable:
		let whatsname be a random growable fruit;
		unless (whatsname is player-only and player is not druidic):
			if whatsname is not fruit of kings:
				if whatsname is part of the brambles:
					if a random chance of 1 in 3 succeeds:
						unless a random chance of final body of the druid in 30 succeeds:
							say "All [bold type][whatsname] shrink[roman type] and disappear from the brambles.";
							remove whatsname from play;
				otherwise:
					say "Suddenly, [bold type][whatsname] appear[roman type] all over on the brambles.";
					now whatsname is part of the brambles;
			otherwise:
				if whatsname is part of the brambles:
					say "The [bold type]fruit of kings[roman type] suddenly [bold type]shrinks and dies[roman type]!";
					remove whatsname from play;
				otherwise:
					if Malygris is in the location: [no abusing the fruit of kings by waiting for it in an easy fight!!]
						say "The [bold type]fruit of kings[roman type] suddenly [bold type]appears[roman type] on the brambles!";
						now whatsname is part of the brambles.

Instead of taking a fruit:
	take no time;
	say "The fruit won't come loose.".

Section - Smoking fruit

There is a fruit called smoking fruit. The growth threshold of smoking fruit is 6.
The description of the smoking fruit is "Little blackened berries from which tiny puffs of smoke escape every few second.".

Fruit-launching the smoking fruit:
	say "[line break]The smoking fruit burst open, releasing [bold type]clouds of smoke[roman type].";
	increase smoke timer of the location of the brambles by 6.

Section - Wooden fruit

There is a fruit called wooden fruit. The growth threshold of wooden fruit is 6.
The description of the wooden fruit is "Small hard spheres, like marbles cut from wood.".

Fruit-launching the wooden fruit:
	if at least one woodenable thing is enclosed by the location of the brambles:
		let item be a random woodenable thing enclosed by the location of the brambles;
		say "[line break]The wooden fruit smash against [the item], turning [if the item is not a person and the item is not plural-named]it[otherwise if the item is not a person]them[otherwise if the item is male]him[otherwise if the item is female]her[otherwise]it[end if] to [bold type]wood[roman type].";
		now item is wood;
		now item is not rusted;
		if item is a weapon:
			now damage die of item is damage die of item divided by 2;
			decrease weapon attack bonus of item by 1;
		if item is a person:
			decrease melee of item by 1;
			decrease defence of item by 1;
			if at least one natural weapon is part of item:
				let item2 be a random natural weapon that is part of item;
				now item2 is wood;
				if damage die of item2 is greater than	3:
					decrease damage die of item2 by 1;
				if damage die of item2 is greater than	4:
					decrease damage die of item2 by 1;
	otherwise:
		say "[line break]The wooden fruit fall to the ground and don't seem to do anything.".

Definition: a thing (called the item) is woodenable if ((item is a person and item is iron) or (item is a person and item is silver) or (item is a weapon and item is iron) or (item is a weapon and item is silver)) and (item is not a natural weapon).

Section - Rusted fruit

There is a fruit called rusted fruit. The growth threshold of rusted fruit is 9.
The description of the rusted fruit is "These fruit look like someone made ornamental fungi from metal, and then left them out in the rain for too long.".

Fruit-launching the rusted fruit:
	say "[line break]The rusted fruit smash to pieces against the wall, releasing clouds of [bold type]rust spores[roman type].";
	now the location is rust-spored.

Section - Hidden fruit

There is a fruit called hidden fruit. The growth threshold of hidden fruit is 9.
The description of the hidden fruit is "You can hardly see them.".
Hidden fruit is player-only.

Fruit-launching the hidden fruit:
	if the player is hidden:
		say "[line break]The hidden fruit are launched toward you, where they burst open in a confusing play of light and shadows; but since you are already hidden, this has no effect.";
	otherwise:
		say "[line break]The hidden fruit are launched toward you, where they burst open in a confusing play of light and shadows. You are now [bold type]hidden[roman type].";
		now the player is hidden.

Section - Buzzing fruit

There is a fruit called buzzing fruit. The growth threshold of buzzing fruit is 12.
The description of the buzzing fruit is "These fruit look like tiny hives, and sound as if swarms of angry bees live inside them.".

The swarm of bees is a fixed in place thing. The description of the swarm of bees is "These bees are mad. Really mad. And they'll take it out one anyone who doesn't have druidic powers.".

Instead of taking the swarm of bees:
	take no time;
	say "You can't grab a swarm of angry bees.".
	
Instead of attacking the swarm of bees:
	take no time;
	say "They're everywhere! There's no chance of killing this swarm.".
	
Every turn when the swarm of bees is in the location:
	if at least one not druidic person is in the location:
		let guy be a random not druidic person in the location;
		let n be a random number between 1 and 3;
		decrease health of guy by n;
		say "The swarm of bees attacks [the guy], dealing [bold type][n] damage[roman type][if health of guy is less than 1], which is [bold type]deadly[roman type][otherwise if concentration of guy is greater than 0] and breaking [bold type]concentration[roman type][end if].";
		now concentration of guy is 0;
		if guy is the player and health of the player is less than 0:
			end the story saying "That must sting!".
			
Last every turn when the swarm of bees is in the location:
	if a random chance of 1 in 8 succeeds:
		say "The [bold type]swarm of bees disappears[roman type].";
		remove swarm of bees from play.
	
Fruit-launching the buzzing fruit:
	say "[line break]The buzzing fruit smash to pieces, releasing a [bold type]swarm of angry bees[roman type].";
	move swarm of bees to the location.


Section - Crawling fruit

There is a fruit called crawling fruit. The growth threshold of crawling fruit is 12.
The description of the crawling fruit is "From a distance, they appear to be fruit coloured in black and white, but from up close it turns out that they actually consist of crawling worms and beetles.".

Fruit-launching crawling fruit:
	if the number of alive undead persons in the location is less than 1:
		say "[line break]The crawling fruit release beetles and worms that hunger for dead flesh. Unfortunaly, they find no undead monsters[if large pile of body parts is in the location]; but they do devour the pile of human body parts[end if].";
	otherwise:
		let K be the list of alive undead persons in the location;
		say "[line break]The crawling fruit release [bold type]beetles and worms[roman type] that hunger for dead flesh. They feast on the body of [K with definite articles], decreasing health by 50%.";
		repeat with guy running through K:
			now health of guy is (health of guy / 2);
			if health of guy is 0, now health of guy is 1.

Section - Golden fruit

There is a fruit called golden fruit. The growth threshold of golden fruit is 15.
The description of the golden fruit is "They are a beautiful gold.".

The golden fruit timer is a number that varies.

An attack modifier rule (this is the golden fruit rule):
	if the golden fruit timer is greater than 0 and the global attacker is druidic:
		say " + 3 (golden fruit bonus)[run paragraph on]";
		increase the attack strength by 3.

Every turn when the main actor is druidic:
	if the golden fruit timer is greater than 0:
		decrease the golden fruit timer by 1;
		if the golden fruit timer is 0:
			say "The effect of the golden fruit [bold type]wears off[roman type].".

Fruit-launching golden fruit:
	let guy be a random druidic person in the location;
	say "[line break]The golden fruit explode above [the guy], releasing a [bold type]golden light[roman type].";
	now golden fruit timer is a random number between 8 and 14.

Status rule (this is the golden fruit status rule):
	if the player is druidic and the golden fruit timer is greater than 0:
		say "You are under the influence of the [bold type]golden fruit[roman type], which gives you a +3 attack bonus.[line break][run paragraph on]".

Section - Weird fruit

There is a fruit called weird fruit. The growth threshold of weird fruit is 15.
The description of the weird fruit is "Just looking at them makes your head hurt.".
Weird fruit is player-only.

Weird fruit timer is a number that varies.
Weird fruit place is a room that varies.

Every turn when the main actor is druidic:
	if the weird fruit timer is greater than 0:
		decrease the weird fruit timer by 1;
		if the weird fruit timer is 0:
			say "The distracting effects of the weird fruit [bold type]wear off[roman type].".

Fruit-launching weird fruit:
	say "[line break]The weird fruit explode all around, releasing [bold type]weird and distracting[roman type] images and sounds. You find it remarkably easy to ignore them, but others may be more confused, and may take irrational actions.";
	now weird fruit timer is a random number between 10 and 12;
	now weird fruit place is the location.
	
Last AI action selection rule (this is the weird fruit randomise the action result rule):
	if weird fruit timer is not 0 and the weird fruit place is the location and the running AI is not druidic:
		repeat through the Table of AI Action Options:
			increase the Action Weight entry by a random number between 0 and 300.	

Section - Fruit of kings

There is a fruit called the fruit of kings. The fruit of kings is not plural-named. The growth threshold of fruit of kings is 17.
The description of the fruit of kings is "You feel reverence for this highest product of the natural world: the fruit from which the divine substance of ment is made!".
Fruit of kings is player-only.

Fruit-launching fruit of kings:
	say "[line break]The fruit of kings majestically sails towards you, comes to a halt before your nose, and releases its precious powder. [bold type]Ment[roman type]!";
	have the ment kick in.

Section - Shimmering fruit

There is a fruit called shimmering fruit. The growth threshold of shimmering fruit is 15.
The description of the shimmering fruit is "One moment they seem be here, the next moment they seem to be somewhere else.".

Fruit-launching shimmering fruit:
	say "[line break]Very slowly, the shimmering fruit rise up. Then, suddenly, they explode into a [bold type]chaos of portals[roman type]!";
	repeat with guy running through alive persons in the location:
		if guy is not the player:
			let n be teleport amount of guy;
			try the guy teleporting;
			now teleport amount of guy is n; [compensating]
	teleport the player.

[Section - Testing

Allfruiting is an action applying to nothing. Understand "allfruit" as allfruiting.

Carry out allfruiting:
	take no time;
	say "K.";
	now brambles strength is 4;
	repeat with X running through fruits:
		now X is a part of the brambles.]


Section - Old Bodmall stuff


[
Section - Bodmall power - Raise fog

Bodmall-fogging is an action applying to nothing.

An AI action selection rule for Bodmall (this is the Bodmall considers fogging rule):
	if smoke timer of the location of Bodmall is 0:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the Bodmall Bodmall-fogging;
		now the Action Weight entry is a random number between -5 and 15;

Carry out Bodmall Bodmall-fogging:
	say "Bodmall chants softly, and great [bold type]clouds of fog[roman type] or smoke rise up from the ground.";
	now smoke timer of the location of Bodmall is a random number between 5 and 12.


Section - Bodmall power - Transmute metal to wood

[TODO make this an action applying to a thing?]
Bodmall-transmuting is an action applying to nothing.

An AI action selection rule for Bodmall (this is the Bodmall considers transmuting rule):
	let X be a random readied weapon enclosed by the chosen target;
	if X is iron or X is silver:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the Bodmall Bodmall-transmuting;
		now the Action Weight entry is a random number between -50 and 20;

Carry out Bodmall Bodmall-transmuting:
	let X be a random readied weapon enclosed by the chosen target;
	if X is iron or X is silver:
		if X resists Bodmall transmutation:
			say "Bodmall screams several harsh syllables and points at [the X]. Nothing happens.";
		otherwise:
			say "Bodmall screams several harsh syllables and points at [the X]. It immediately [bold type]turns to wood[roman type]!";
			now X is wood;
			now X is not rusted;
			now damage die of X is damage die of X divided by 2;
			decrease weapon attack bonus of X by 2;
	otherwise:
		say "Bodmall chants softly.".

To decide whether (item - a weapon) resists Bodmall transmutation:
	let m be 20;
	if item is major:
		increase m by 10;
	if item is epic:
		increase m by 20;
	if a random chance of 10 in m succeeds:
		decide no;
	otherwise:
		decide yes.]

[
Check an actor attacking when the brambles are in the location (this is the attack with brambles in the location rule):
	unless the actor is Bodmall or the actor is flying:
		unless the actor is the player and the power of Bodmall is granted:
			let W be a random readied weapon held by the actor;
			unless W is ranged:
				say "[The actor] must move through the thorny bushes to reach [the noun]. [italic type]";
				test the spirit of the actor against 12;
				if test result is true:
					say " ";
					test the body of the actor against 12;
				if test result is true:
					say "[roman type] The thorns deal [bold type]no damage[roman type].";
				otherwise:
					let n be 3;
					calculate the pdr for the actor;
					decrease n by pdr;
					if n is less than 0:
						now n is 0;
					if n is 0:
						say " [roman type]Because of damage reduction, the thorns deal [bold type]no damage[roman type] to [the actor].";
					otherwise:
						say " [roman type]The thorns deal [bold type][n] damage[roman type] to [the actor].";
						decrease the health of the actor by n;
						if the actor is dead:
							if the actor is the player:
								say "Your weakened body could not handle this!";
								end the story saying "A thorn kills a man, not by force, but by pricking often.";
								rule fails;
							otherwise:
								say "[The name of the actor] is killed by the thorns!";
								rule fails.

After reporting an actor dodging when the thorny bushes are in the location (this is the thorns hurt the dodger rule):
	unless the actor is Bodmall or the actor is flying:
		unless the actor is the player and the power of Bodmall is granted:
			let n be 1;
			calculate the pdr for the actor;
			decrease n by pdr;
			if n is less than 0, now n is 0;
			unless n is 0:
				say "Dodging is dangerous with so many thorns around; the bushes deal [bold type]1 damage[roman type] to [the actor].";
				decrease the health of the actor by 1;
				unless the actor is alive:
					if the actor is the player:
						say "Your weakened body could not handle this!";
						end the story saying "A thorn kills a man, not by force, but by continuously pricking";
						rule fails;
					otherwise:
						say "[The name of the actor] is killed by the thorns!";
						rule fails.

An attack modifier rule (this is the thorns running rule):
	if the global defender is the player and the thorny bushes are in the location:
		if the player is retreater or the player is runner:		
			unless the power of Bodmall is granted:
				say " + 3 (you are slowed down by the thorny bushes)[run paragraph on]";
				increase the attack strength by 3;
			otherwise:
				unless the global attacker weapon is ranged:
					say " - 2 (your retreat covered by the thorny bushes)[run paragraph on]";
					decrease the attack strength by 2.]




Chapter - Level 5 - Malygris

Malygris is a monster. Malygris is proper-named. Malygris is male and not neuter. "Malygris, perhaps the greatest of all living sorcerers, is standing here." The description of Malygris is "His white eyebrows are contracted to a single line on the umber parchment of his face, and beneath them his eyes are cold and green as the ice of ancient floes; his beard, half white, half of a black with glaucous gleams, falls nearly to his knees and hides many of the writhing serpentine characters inscribed in woven silver athwart the bosom of his violet robe. -- Clark Ashton Smith, [italic type]The Last Incantation[roman type].".

Understand "sorcerer" and "mage" and "wizard" and "him" as the Malygris.

The level of Malygris is 5.

The health of Malygris is 55.
The melee of Malygris is 7.
The defence of Malygris is 16.

The body score of Malygris is 11.
The mind score of Malygris is 11.
The spirit score of Malygris is 11. 

When play begins:
	let X be a random natural weapon part of Malygris;
	now printed name of X is "Malygris's innate magical powers".

Malygris is weapon user.

Section - Weapon

The dagger of draining is a dagger.

Malygris carries the dagger of draining. The dagger of draining is a weapon. The description of the dagger of draining is "This magical dagger saps the powers of any enemy it hits, and transfers it to the wielder.".
The damage die of the dagger of draining is 8.

The special weapon info of the dagger of draining is "; drains statistics[run paragraph on]".

An aftereffects rule (this is the dagger of draining aftereffects rule):
	if the global attacker weapon is the dagger of draining and the attack damage is greater than 0:
		say "The magical dagger saps ";
		if a random number between 1 and 4 is:
			-- 1:
				decrease defence of the global defender by 1;
				increase defence of the global attacker by 1;
				say "[possessive of the global defender] defensive reflexes, transferring them to [the global attacker].";
			-- 2:
				decrease mind score of the global defender by 1;
				increase mind score of the global attacker by 1;
				say "[possessive of the global defender] mind score, transferring it to [the global attacker].";
			-- 3:
				decrease body score of the global defender by 1;
				increase body score of the global attacker by 1;
				say "[possessive of the global defender] body score, transferring it to [the global attacker].";
			-- 4:
				decrease spirit score of the global defender by 1;
				increase spirit score of the global attacker by 1;
				say "[possessive of the global defender] spirit score, transferring it to [the global attacker].";.

An AI weapon selection rule for the dagger of draining (this is the Malygris prefers the dagger of draining rule):
	increase the Weight by 10.
				

Section - Special powers

[Teleportation.]

The teleport amount of Malygris is 2.
The teleport eagerness of Malygris is 8.

Malygris-summon-countdown is a number that varies. Malygris-summon-countdown is 0.

Last carry out Malygris teleporting:
	if teleportation-destination is not the location of the player:
		if the teleport amount of Malygris is 1:
			now Malygris-summon-countdown is a random number between 5 and 7;
		if the teleport amount of Malygris is 0:
			if demonic assassin is alive and demonic assassin is off-stage: [failed to summon last time]
				now Malygris-summon-countdown is a random number between 4 and 5. [and this time he is faster]

[summoning]

Every turn when Malygris-summon-countdown is not 0:
	if the location of Malygris is the location of the player and the player is not hidden:
		unless the player is hidden:
			say "Your arrival interrupts [if teleport amount of Malygris is 1]an intricate[otherwise]a hasty[end if] summoning ritual that Malygris was attempting to perform.";
			now Malygris-summon-countdown is 0; [his attempt at summoning has failed because the player has interrupted it]
	otherwise:
		decrease Malygris-summon-countdown by 1;
		if Malygris-summon-countdown is 0:
			move demonic assassin to the location of Malygris;
			if the location of Malygris is the location of the player:
				say "A [bold type]demonic being[roman type] suddenly appears!";
		otherwise:
			if the location of Malygris is the location of the player:
				say "Malygris speaks the words of a long and complicated spell.".
		
[Item destruction.]

Disintegrate power of Malygris is 10.


Section - Special power - unghoul

[Unghoul. This is to counter any abyss-of-the-soul-play.]

Unghouling is an action applying to nothing.

An AI action selection rule for Malygris (this is the consider unghouling rule):
	[if Malygris opposes the player:] [Why was this here?]
	if the current form is ghoul-form and at least two undead persons are in the location:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of Malygris unghouling;
		now the Action Weight entry is a random number between 0 and 30.

Carry out Malygris unghouling:
	say "As Malygris casts a complex spell, and you feel your flesh [bold type]returning to normal[roman type]!";
	unghoulify the player.

Section - Malygris prose

Report Malygris hitting a dead pc:
	say "'That's one less annoyance. Now I can get back to work.' Malygris says to the world at large.";
	rule succeeds.

Report Malygris attacking:
	unless the actor is the noun:
		say "Smiling his wicked, slim smile, Malygris lunges towards [the noun].";
	otherwise:
		say "'I'll make this a little less one-sided, by softening myself up for you,' Maltgris confides.";
	rule succeeds.

Report Malygris dodging:
	say "Swirling his robe around him, Malygris dodges the attack.";
	rule succeeds.

Report Malygris parrying:
	say "Malygris's smile never falters as he interposes his weapon.";
	rule succeeds.


Section - Love affair with the insane Malygris

Check Malygris attacking Malygris:
	if a random chance of 2 in 3 succeeds:
		try Malygris waiting instead.

Malygris-love-affair is a number that varies. Malygris-love-affair is 0.
Malygris-lover is a truth state that varies. Malygris-lover is false.

Report Malygris waiting when Malygris is insane:
	unless Malygris-love-affair is 3:
		increase Malygris-love-affair by 1;
	if Malygris-love-affair is:
		-- 1:
			say "'I forgive you, young [if the player is male]man[otherwise if the player is female]lady[otherwise]creature[end if], for I know that you did not come here of your own accord.' Malygris tells you.";
		-- 2:
			say "'You remind me of someone I once knew. A person who was very dear to me.' Malygris brushes away a tear.";
		-- otherwise:
			say "'I feel embarrassed to say this, but... well... to be frank, I find you a [italic type]very attractive[roman type] [if the player is male]young guy[otherwise if the player is female]young gal[otherwise]young thing[end if]. Will you kiss me?' Malygris suggests.";
	rule succeeds.

Instead of kissing Malygris:
	if Malygris-love-affair is 0:
		say "That doesn't seem like a good idea.";
		take no time;
	if Malygris-love-affair is 1 or Malygris-love-affair is 2:
		say "That would be rushing things. Have a little patience.";
		take no time;
	if Malygris-love-affair is greater than 2:
		now Malygris-lover is true;
		say "You overcome your initial resistance, and walk up to the old man. From up close, he looks vulnerable and very human. Your lips find each other, and your tongues soon follow suit. This is... much more pleasant than you had imagined it would be. It feels [italic type]right[roman type].[paragraph break]While he keeps kissing you ardently, Malygris slowly lowers himself to his knees. You gasp as he makes you realise that he has several centuries of experience under his belt. No, you're probably not going to miss the prince. No. Not at all.".

Victory message rule (this is the Malygris lover message rule):
	if Malygris-lover is true:		
		end the story saying "You have found true love and infinite pleasure!";
		rule succeeds.	

Book - Other Monsters

Chapter - Demonic assassin

The demonic assassin is a monster. "A horned figure stalks through the room." Understand "horned" and "figure" as the demonic assassin. The description of the demonic assassin is "A being summoned by Malygris from the depths of Hell, this demon has only one purpose: to stop you from reaching its master.".

The level of demonic assassin is 0.
The demonic assassin is demonic.

The health of demonic assassin is 25.
The melee of demonic assassin is 4.
The defence of demonic assassin is 12.

The body score of demonic assassin is 8.
The mind score of demonic assassin is 8.
The spirit score of demonic assassin is 8. 

The demonic assassin is follower.
Follower percentile chance of demonic assassin is 100.
The demonic assassin is unnaturally aware.

When play begins:
	let X be a random natural weapon part of the demonic assassin;
	now the printed name of X is "claws".
	
Demonic assassin is weapon user.

The demonic assassin carries the demon blade.

The demon blade is a sword. The description of the demon blade is "A jagged sword covered in evil-looking runes. It was never meant to be used by humans.".

The demon blade is cursed.
The internal heat of the demon blade is 4.

Check attacking (this is the attacking with the demon blade is a bad idea rule):
	if the player carries the demon blade and the demon blade is readied:
		if a random chance of 3 in 5 succeeds:
			say "The [bold type]demonic blade[roman type] turns on you!";
			try the player hitting the player instead;

Section - Demonic assassin prose

Report an actor hitting the dead demonic assassin:
	say "With a thunderous explosion, the demonic assassin is pulled back to Hell.";
	rule succeeds.

Report the demonic assassin hitting a dead pc:
	say "The assassin's laugh as you fall down is the most evil thing you have ever heard. It is also the last.";
	rule succeeds.

Report the demonic assassin attacking:
	unless the actor is the noun:
		say "The assassin jumps at [the noun].";
	otherwise:
		say "The demonic assassin laughs its evil laugh as it slashes at itself.";
	rule succeeds.

Report the demonic assassin dodging:
	say "The demonic assassin dives out of the way.";
	rule succeeds.

Report the demonic assassin parrying:
	say "The assassing raises his blade.";
	rule succeeds.

Report the demonic assassin waiting when the demonic assassin is insane:
	say "The assassin stabs the ground several times, with little effect.";
	rule succeeds.


Chapter - Nameless Horror

The Nameless Horror is a horrific horrific-faction monster. "Screams rip from your throat as soon as you become aware of the mindbogglingly hideous monster that resides here, an abomination referred to only as the Nameless Horror." The indefinite article of the nameless horror is "the". The description of the Nameless Horror is "A vast dark mass sprouting teeth and claws at random -- you cannot force yourself to look at it.".

A final monster placement rule (this is the Nameless Horror in Eternal Prison rule):
	now Nameless horror is in eternal prison.

The level of Nameless Horror is 10.

The health of Nameless Horror is 1000.
The melee of Nameless Horror is 50.

The body score of Nameless Horror is 20.
The mind score of Nameless Horror is 20.
The spirit score of Nameless Horror is 20. 

The Nameless Horror is horrific.
The Nameless Horror is eyeless.
The Nameless Horror is unnaturally aware.
The Nameless Horror is emotionless.

When play begins:
	let X be a random natural weapon part of the nameless horror;
	now damage die of X is 50;
	now dodgability of X is 2;
	now passive parry max of X is 0;
	now active parry max of X is 0;
	now printed name of X is "countless teeth and claws".

Follower percentile chance of Nameless Horror is 60.

Every turn when Nameless Horror is not follower (this is the wake the Nameless Horror rule):
	let the way be the best route from the location of Nameless to the location of the player;
	if way is a direction:
		say "An overwhelming scream seems to rip the world apart. An [bold type]evil intelligence has awakened[roman type] so vast as to be beyond comprehension.";
		award achievement Durin's bane;
		wake the Nameless Horror.

To wake the Nameless Horror:
	now Nameless Horror is follower.

Followers rule (this is the Nameless Horror stops to kill rule):
	if test subject is Nameless Horror:
		if the location of the Nameless Horror encloses more than one alive person:
			rule fails.

Every turn (this is the Nameless Horror kills all rule):
	if the Nameless Horror is follower and the location of the Nameless Horror is not the location of the player:
		if the location of the Nameless Horror encloses more than one alive person:
			let guy be Nameless Horror;
			while guy is Nameless Horror:
				let guy be a random alive person enclosed by the location of Nameless Horror;
			decrease health of guy by 100;
			if guy is dead:
				remove guy from play.

Every turn when Nameless Horror is follower (this is the increase hunger of Nameless Horror rule):
	increase follower percentile chance of Nameless Horror by 1. 

Every turn when follower percentile chance of Nameless Horror is greater than 100 (this is the speed up Nameless Horror rule):
	let the way be the best route from the location of Nameless Horror to the location of the player;
	if way is a direction:
		try Nameless Horror going the way.
	
An AI action selection rule for the Nameless Horror (this is the Nameless Horror does not concentrate rule):
	choose row with an Option of the action of the Nameless Horror concentrating in the Table of AI Action Options;
	decrease the Action Weight entry by 1000.

An AI action selection rule for the at-React Nameless Horror (this is the Nameless Horror does not parry rule):
	choose row with an Option of the action of the Nameless Horror parrying in the Table of AI Action Options;
	decrease the Action Weight entry by 1000.
		
An AI action selection rule for the at-React Nameless Horror (this is the Nameless Horror does not dodge rule):
	choose row with an Option of the action of the Nameless Horror dodging in the Table of AI Action Options;
	decrease the Action Weight entry by 1000.		

An AI action selection rule for the Nameless Horror (this is the Nameless Horror considers waiting rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the Nameless Horror waiting;

Instead of the Nameless Horror waiting:
	say "[one of]The Nameless Horror emits a maddening shriek[or]Darkness coalesces around the Nameless Horror[or]The world shakes as the Nameless Horror roars in defiance[at random].".


Section - Nameless horror prose

Report an actor hitting the dead Nameless horror:
	say "The death scene of the Nameless Horror cannot be described.";
	rule succeeds.

Report the Nameless horror hitting a dead pc:
	say "Tentacles! Shrieks! Claws! Darkness! Everywhere!";
	rule succeeds.

Report the Nameless horror attacking:
	unless the actor is the noun:
		say "The Nameless Horror lumbers towards [the noun].";
	otherwise:
		say "The Nameless Horror turns on itself.";
	rule succeeds.





Chapter - Rotting corpse

The rotting corpse is an undead undead-faction monster. "An animated corpse shambles around. Its smell is absolutely disgusting."

The rotting corpse is emotionless.
The rotting corpse is eyeless.

The level of rotting corpse is 0.

The health of rotting corpse is 30.
The melee of rotting corpse is 3.
The defence of rotting corpse is 8.

The body score of rotting corpse is 4.
The mind score of rotting corpse is 4.
The spirit score of rotting corpse is 4. 

When play begins:
	let X be a random natural weapon part of the rotting corpse;
	now damage die of X is 7;
	now dodgability of X is 3;
	now passive parry max of X is 3;
	now active parry max of X is 0;	
	now the printed name of X is "rotting appendages".

A rotting limb is a kind of thing.
The material of a rotting limb is usually flesh.

The rotting left leg is part of the rotting corpse. It is a rotting limb. The description of the rotting left leg is "It [if the rotting left leg is part of the rotting corpse]belongs[otherwise]used to belong[end if] to the rotting corpse.".
The rotting right leg is part of the rotting corpse. It is a rotting limb. The description of the rotting right leg is "It [if the rotting right leg is part of the rotting corpse]belongs[otherwise]used to belong[end if] to the rotting corpse.".
The rotting left arm is part of the rotting corpse. It is a rotting limb. The description of the rotting left arm is "It [if the rotting left arm is part of the rotting corpse]belongs[otherwise]used to belong[end if] to the rotting corpse.".
The rotting right arm is part of the rotting corpse. It is a rotting limb. The description of the rotting right arm is "It [if the rotting right arm is part of the rotting corpse]belongs[otherwise]used to belong[end if] to the rotting corpse.".
The rotting head is part of the rotting corpse. It is a rotting limb. The description of the rotting head is "It [if the rotting head is part of the rotting corpse]belongs[otherwise]used to belong[end if] to the rotting corpse.".

Instead of eating a rotting limb:
	take no time;
	say "The smell makes you gag.".

Instead of taking a rotting limb:
	take no time;
	say "You will not touch that. You will touch a lot of things, but not that.".

To decide what number is the limbs of the rotting corpse:
	let m be 0;
	repeat with item running through rotting limbs:
		if item is part of the rotting corpse:
			increase m by 1;
	decide on m.
	
To decide what number is the legs of the rotting corpse:
	let m be 0;
	if rotting left leg is part of the rotting corpse:
		increase m by 1;
	if rotting right leg is part of the rotting corpse:
		increase m by 1;
	decide on m.
	
To decide what number is the arms of the rotting corpse:
	let m be 0;
	if rotting left arm is part of the rotting corpse:
		increase m by 1;
	if rotting right arm is part of the rotting corpse:
		increase m by 1;
	decide on m.

The description of the rotting corpse is "This corpse has definitely seen better times[unless limbs of the rotting corpse is 5]:[end if] [if the rotting head is not part of the rotting corpse]it has no head, [end if][if the legs of the rotting corpse is 1]it misses a leg, [end if][if the legs of the rotting corpse is 0]it misses both legs, [end if][if the arms of the rotting corpse is 1]one of its arms has fallen off, [end if][if the arms of the rotting corpse is 0]both of its arms have fallen off, [end if]and it smells awful."

Instead of smelling when the rotting corpse is in the location:
	say "The smell of rotting meat fills your nostrils.".

Every turn when a rotting limb is enclosed by the location (this is the rotting limbs decay rule):
	repeat with item running through rotting limbs enclosed by the location:
		unless item is part of the rotting corpse:
			if a random chance of 1 in 7 succeeds:
				if item is visible:
					say "[The item] decays completely.";
					remove item from play.

An aftereffects rule (this is the rotting corpse loses limbs rule):
	if the global defender is alive and the attack damage is greater than 0:
		if the global defender is the rotting corpse and limbs of the rotting corpse is not 0:
			let item be a random rotting limb part of the rotting corpse;
			say "As the corpse reels back from the blow, his [item] falls off.";
			move item to the location of the rotting corpse;
			let X be a random natural weapon part of the rotting corpse;
			decrease damage die of X by 1;
			if item is rotting left arm or item is rotting right arm:
				decrease damage die of X by 1;
			if item is rotting left leg or item is rotting right leg:
				decrease follower percentile chance of rotting corpse by 40.

An AI action selection rule for the rotting corpse (this is the rotting corpse without a head does not concentrate rule):
	let P be the rotting corpse;
	if the rotting head is not part of the rotting corpse:
		choose row with an Option of the action of P concentrating in the Table of AI Action Options;
		decrease the Action Weight entry by 1000.

An attack modifier rule (this is the rotting corpse attack modifier rule):
	if the global attacker is the rotting corpse:
		let m be arms of the rotting corpse + legs of the rotting corpse;
		let m be 4 minus m;
		unless m is 0:
			if the numbers boolean is true, say " - [m] (missing limbs)[run paragraph on]";
			decrease the attack strength by m.

An attack modifier rule (this is the rotting corpse defense modifier rule):
	if the global defender is the rotting corpse:
		if legs of the rotting corpse is 1:
			say " + 2 (corpse missing a leg)[run paragraph on]";
			increase the attack strength by 2;
		if legs of the rotting corpse is 0:
			say " + 4 (corpse missing both legs)[run paragraph on]";
			increase the attack strength by 4.

A damage multiplier rule (this is the limbless rotting corpse can't attack rule):
	if the global attacker is the rotting corpse and limbs of the rotting corpse is 0:
		say " - 100% (no means of attack)[run paragraph on]";
		now the attack damage is 0.

Section - Rotting corpse prose

Report an actor hitting the dead rotting corpse:
	say "The rotting corpse disintegrates slimily.";
	rule succeeds.

Report the corpse hitting a dead pc:
	say "Your last sensation is the rotting corpse falling on top of you and oozing its way into your nostrils.";
	rule succeeds.

Report the corpse attacking:
	say "The rotting corpse [if legs of the rotting corpse is 2]walks[otherwise if legs of the rotting corpse is 1]hops[otherwise]crawls[end if] towards [if the noun is the actor]itself[otherwise][the noun][end if], [if arms of the rotting corpse is 2]its arms raised[otherwise if arms of the rotting corpse is 1]its single arm raised[otherwise if the rotting head is part of the rotting corpse]its teeth at the ready[otherwise if legs of the rotting corpse is greater than 0]hoping to land a good kick[otherwise]with no other weapon than its smell[end if].";
	rule succeeds.

Report the corpse dodging:
	say "The corpse [if legs of the rotting corpse is 2]walks[otherwise if legs of the rotting corpse is 1]hops[otherwise]crawls[end if] out of the way.";
	rule succeeds.

Report the corpse waiting when the rotting corpse is insane:
	say "The rotting corpse spends a few seconds just rotting.";
	rule succeeds.




Chapter - Aswang

[Because everyone wants a shape-shifting undead witch, right? That turns into a bird and flies away, only to return later with more health.]

As-shape is a kind of value. The as-shapes are as-witch, as-bird and as-dog.
The aswang has an as-shape. The as-shape of the aswang is as-witch.

The aswang is an undead undead-faction monster. "An aswang is here, having taken the shape of [if as-shape of aswang is as-witch]an ugly old woman[otherwise if as-shape of aswang is as-bird]a huge owl-like bird[otherwise]a ferocious black dog[end if]."
Understand "witch" and "dog" and "hound" and "bird" and "owl" and "woman" and "ugly" and "old" as the aswang.

The description of the aswang is "The undead monster has currently taken the form of [if as-shape of aswang is as-witch]an ugly old woman with long, dirty hair and completely white eyes[otherwise if as-shape of aswang is as-bird]a huge owl-like bird with leathery wings[otherwise]a ferocious black dog with blood-shot eyes[end if].".

The level of the aswang is 0.

The health of the aswang is 22.
The melee of the aswang is 2.
The defence of the aswang is 9.

The body score of the aswang is 6.
The mind score of the aswang is 6.
The spirit score of the aswang is 6. 

When play begins:
	let X be a random natural weapon part of the aswang;
	now damage die of X is 6;
	now dodgability of X is 2;
	now passive parry max of X is 2;
	now active parry max of X is 0;	
	now the printed name of X is "[if as-shape of aswang is as-witch]razor-sharp fingernails[otherwise if as-shape of aswang is as-bird]beak[otherwise]teeth[end if]".

Section - Shape-shifting

Aswang-shifting is an action applying to nothing.
Considered-shape is an as-shape that varies.

An AI action selection rule for the aswang (this is the aswang considers shape shifting rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the aswang aswang-shifting;
	[now the Action Weight entry is 0;]
	now considered-shape is as-witch;
	if the as-shape of the aswang is as-witch and the health of the aswang is less than 15:
		now considered-shape is as-dog;
		increase Action Weight entry by 10;
	if the as-shape of the aswang is as-witch and the health of the aswang is less than 7:
		now considered-shape is as-bird;
		increase Action Weight entry by 5;
	if the as-shape of the aswang is as-dog and the health of the aswang is less than 7:
		now considered-shape is as-bird;
		increase Action Weight entry by 12;
	if the as-shape of the aswang is as-bird and the health of the aswang is greater than 12:
		now considered-shape is as-witch;
		increase Action Weight entry by 10;
[		if a random chance of 1 in 30 succeeds: [and just to spice things up a bit]
		now considered-shape is a random as-shape;
		now Action Weight entry is a random number between 1 and 30].

Carry out the aswang aswang-shifting:
	while considered-shape is as-shape of the aswang:
		now considered-shape is a random as-shape;
	say "The aswang suddenly transforms into [bold type][if considered-shape is as-witch]an ugly witch[otherwise if considered-shape is as-dog]a bloodthirsty dog[otherwise]an owl-like bird with devilish wings[end if][roman type]!";
	if the as-shape of aswang is as-dog:
		transform away from dog;
	if the as-shape of aswang is as-bird:
		transform away from bird;
	if the considered-shape is as-dog:
		transform to dog;
	if the considered-shape is as-bird:
		transform to bird;
	now as-shape of aswang is considered-shape.		

To transform to dog:
	increase melee of aswang by 2;
	decrease defence of aswang by 1.

To transform away from dog:
	decrease melee of aswang by 2;
	increase defence of aswang by 1.	

To transform to bird:
	decrease melee of aswang by 2;
	increase defence of aswang by 1.

To transform away from bird:
	increase melee of aswang by 2;
	decrease defence of aswang by 1.

Section - The witch can hex you

Aswang-hexing is an action applying to one visible thing.
A person can be hexed. A person is usually not hexed.

An AI action selection rule for the as-witch aswang (this is the aswang as witch considers hexing rule):
	if the chosen target is not hexed:
		choose a blank Row in the Table of AI Action Options;
		now the Option entry is the action of the aswang aswang-hexing the chosen target;
		now the Action Weight entry is 10;

Carry out the aswang aswang-hexing:
	say "The aswang attempts to hex [the noun]. [italic type][run paragraph on]";
	let n be 11 + concentration of the aswang;
	test the mind of the noun against n;
	if test result is false:
		say " [roman type][The noun] [is-are] now [bold type]hexed[roman type].";
		now the noun is hexed;
	otherwise:
		say " [roman type][The noun] [bold type]resist[s] the hex[roman type].";

Initiative update rule (this is the decrease initiative when hexed rule):
	repeat with X running through all alive persons enclosed by the location:
		if X is hexed:
			if a random chance of 2 in 3 succeeds:
				decrease the initiative of X by a random number between 0 and 2.

Status rule (this is the hexed status rule):
	if the player is hexed:
		say "You have been [bold type]hexed[roman type] by the aswang, which gives you an initiative penalty.[line break][run paragraph on]".

Every turn when at least one alive person is hexed (this is the remove hexes when aswang is dead rule):
	if the aswang is dead:
		repeat with guy running through alive hexed persons:
			now guy is not hexed;
			if guy is player:
				say "You are [bold type]no longer hexed[roman type].".

Section - The dog simply attacks a lot

An AI action selection rule for the at-Act as-dog aswang (this is the aswang as dog likes to attack rule):
	choose row with an Option of the action of the aswang attacking the chosen target in the Table of AI Action Options;
	increase Action Weight entry by 3.

Section - The bird attempts to flee and regenerate

Aswang-fleeing is an action applying to nothing.

An AI action selection rule for the as-bird aswang (this is the aswang as bird considers fleeing rule):
	if a random chance of 1 in 3 succeeds and health of the aswang is less than 10:
		if a random chance of 1 in 2 succeeds or aswang is follower:
			choose a blank Row in the Table of AI Action Options;
			now the Option entry is the action of the aswang aswang-fleeing;
			now the Action Weight entry is 20;

Carry out the aswang aswang-fleeing:
	if at least one room is adjacent to the location:
		let place be a random room adjacent to the location;
		if place is retreat location:
			let place be a random room adjacent to the location; [Additional chance of choosing another place then the one we just came from]
		let way be the direction from the location of the aswang to place;
		say "The aswang flies up in the air and flees [way].";
		move aswang to place;
		now aswang is not follower;
	otherwise:
		say "The aswang searches for a way to flee, but finds none.".

Every turn (this is the aswang in bird-shape regenerates rule):
	if as-shape of aswang is as-bird:
		if the location of the aswang is not the location of the player:
			heal the aswang for 1 health;
			if health of the aswang is greater than 15:
				now aswang is follower.

Section - And the bird flies

A flying rule (this is the aswang as bird flies rule):
	if test subject is the aswang and the as-shape of the aswang is as-bird:
		rule succeeds.
				
Section - Prose				

Report an actor hitting the dead aswang:
	say "The aswang [if as-shape of aswang is as-witch]dies screaming[otherwise if as-shape of aswang is as-bird]dies screeching[otherwise]dies howling[end if].";
	rule succeeds.

Report the aswang hitting a dead pc:
	say "You are torn apart by the [if as-shape of aswang is as-witch]witch[otherwise if as-shape of aswang is as-bird]bird[otherwise]hound[end if].";
	rule succeeds.

Report the aswang attacking:
	unless the actor is the noun:
		say "The aswang rushes at [the noun], with [if as-shape of aswang is as-witch]sharp fingernails ready[otherwise if as-shape of aswang is as-bird]talons and beak outstretched[otherwise]slavering fangs ready[end if].";
	otherwise:
		say "The aswang claws at her own eyes.";
	rule succeeds.

Report the aswang dodging:
	say "The aswang [if as-shape of aswang is as-witch]jumps[otherwise if as-shape of aswang is as-bird]flies[otherwise]jumps[end if] aside.";
	rule succeeds.
				
Report the aswang waiting when the aswang is insane:
	say "The aswang cackles like an insane witch. Which makes sense.";
	rule succeeds.




Chapter - Abyss of the Soul

[Like the blood ape, except it grows MUCH stronger whenever a creature in the dungeon dies; and the player cannot absorb the soul!]
[But Malygris must have the power to un-undead the player.]

The abyss of the soul is an undead undead-faction monster. "Before you floats an abyss of the soul; it looks like a [size of the abyss of the soul] sphere of utter darkness."
The abyss of the soul is small.

The description of the Abyss of the Soul is "This [size of the abyss of the soul] sphere of utter darkness is an abyss of the soul, one of the most fearsome of undead monsters. Not only does it sap the strength of all nearby living creatures, it also feeds on the souls of the recently departed.".

The level of the abyss of the soul is 0.

The health of the abyss of the soul is 40.
The melee of the abyss of the soul is 0.
The defence of the abyss of the soul is 8.

The body score of the abyss of the soul is 1.
The mind score of the abyss of the soul is 10.
The spirit score of the abyss of the soul is 10. 

The abyss of the soul is eyeless.
The abyss of the soul is emotionless.
The abyss of the soul is non-attacker.
The abyss of the soul is flyer.

The abyss of the soul strength is a number that varies. The abyss of the soul strength is 2.

Section - AI

An AI action selection rule for the at-Act abyss of the soul (this is the abyss of the soul pulsates rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the abyss of the soul pulsating;
	now the Action Weight entry is 5000;
		
An AI action selection rule for the at-React abyss of the soul (this is the abyss of the soul does not react rule):
	choose row with an Option of the action of the abyss of the soul waiting in the Table of AI Action Options;
	now the Action Weight entry is 5000.

Check the abyss of the soul waiting:
	say "The abyss of the soul hovers in the air, nearly motionless." instead.

Pulsating is an action applying to nothing.

Carry out the abyss of the soul pulsating:
	let n be a random number between 1 and the abyss of the soul strength;
	let lijst be a list of person;
	let dodenlijst be a list of persons;
	let achieve-temp be 0;
	repeat with guy running through alive persons in the location:
		unless guy is undead:
			add guy to lijst;
			decrease health of guy by n;
			if guy is dead:
				add guy to dodenlijst;
				if the player is undead:
					now achieve-temp is 1;
	say "The abyss of the soul pulsates, [unless lijst is empty]sending out a wave of negative energy that deals [bold type][n] damage[roman type] to [the names of lijst][otherwise]but its negative energy dissipates harmlessly[end if][unless dodenlijst is empty], killing [the names of dodenlijst][end if].";
	unless dodenlijst is empty:
		repeat with guy running through dodenlijst:
			have an event of the abyss of the soul killing guy;
	if the player is dead, end the story saying "Your soul descends into the darkest abyss.";
	if achieve-temp is 1:
		award achievement I return to serve.

Section - Growing

An absorption stopping rule (this is the abyss of the soul absorbs all souls rule):
	if the abyss of the soul is alive and the abyss of the soul is not off-stage:
		if the level of test subject is not 0 and the level of test subject is not 10:
			if the abyss of the soul is not gargantuan:
				now the abyss of the soul is the size after the size of the abyss of the soul;
			increase health of the abyss of the soul by 15;
			increase abyss of the soul strength by 1;
			say "You attempt to absorb the soul of [the test subject], but feel how it disappears into the [bold type]deadly abyss[roman type][if test subject is Malygris]. The abyss of the soul immediately grows to gigantic proportions, obliterating the entire dungeon[end if].";
			if the level of test subject is 5:
				end the story saying "Malygris is dead, and so are you. Technically, that counts as a victory.";
			rule succeeds;
		if the level of test subject is 10:
			say "When the soul of [the test subject] disappears into the deadly abyss, the world of the living is shattered.";
			end the story saying "You have set off a cataclysm that destroys galaxies";
			rule succeeds.

Section - Prose

Report an actor hitting the dead abyss of the soul:
	say "The abyss of the soul collapses in on itself and disappears with a soft 'plop'.";
	rule succeeds.

Report the abyss of the soul waiting when the abyss of the soul is insane:
	say "The abyss of the soul just hangs there doing nothing, but you sense that it is having a lot of fun.";
	rule succeeds.




Chapter - Smoke demons

[The smoke demon is a bit special. It is immortal, and can only be killed by removing smoke. Multiple smoke demons can exist in different rooms; we just move them to any room where they should be.]

Section - Statistics

A smoke demon is a monster. 

The description of the smoke demon is "It is hard to say exactly which features of the smoky form show it to be sentient, but there is not the slightest doubt in your mind that it is.".

The smoke demon is demonic.
The smoke demon is horrific-faction. [Attacks even other demons.]

The level of the smoke demon is 0.
The smoke demon is smoke attuned.
The smoke demon is flyer.
The smoke demon is emotionless.
The smoke demon is eyeless.

The health of the smoke demon is 10.
The melee of the smoke demon is 2.
The defence of the smoke demon is 5.

The body score of the smoke demon is 7.
The mind score of the smoke demon is 7.
The spirit score of the smoke demon is 7. 

When play begins:
	let X be a random natural weapon part of the smoke demon;
	now X is size-agnostic;
	now damage die of X is 5;
	now dodgability of X is 2;
	now passive parry max of X is 2;
	now active parry max of X is 0;	
	now the printed name of X is "tendrils".

Understand "tendrils" as the smoke demon.


Section - Making it appear and disappear

A room can be smoke-demoned. A room is usually not smoke-demoned.

Every turn (this is the smoke demon appears and disappears rule):
	repeat with place running through smoke-demoned rooms:
		if the smoke timer of place is 0:
			now place is not smoke-demoned;
			if the smoke demon is enclosed by place:
				have the smoke demon disappear from place;
	if the smoke timer of location is greater than 0:
		unless the location is smoke-demoned:
			let n be the smoke timer of the location;
			if n is greater than 5:
				if a random chance of n in 500 succeeds:
					now the location is smoke-demoned;
		if the location is smoke-demoned:
			unless the smoke demon is enclosed by the location:
				if a random chance of 1 in 4 succeeds:
					have the smoke demon appear.

Every turn (this is the tweak smoke demon rule):
	if the smoke demon is enclosed by the location:
		let n be smoke timer of the location divided by 3;
		decrease n by 3;
		now melee of the smoke demon is n;
		increase n by 6;
		now defence of the smoke demon is n.

To have the smoke demon disappear from (place - a room):
	remove smoke demon from play;
	if place is the location:
		say "With an eery cry, the [bold type]smoke demon dissipates[roman type]!".

To have the smoke demon appear:
	now health of the smoke demon is 10;
	now faction of the smoke demon is horrific-faction;
	move smoke demon to the location;
	say "The smoke coalesces to [bold type]form a smoke demon[roman type]!".


Section - Prose

Report an actor hitting the dead smoke demon:
	say "The smoke demon drifts apart[if the smoke timer of the location is greater than 0]. Though there are still clouds of smoke here, they no longer seem to be sentient[end if].";
	rule succeeds.

Report the smoke demon hitting a dead pc:
	say "You attempt to breathe, but your lungs are only filled with smoke and more smoke. The murderous vapours seem to become as thick as wool as you desperately try to exhale, inhale, anything -- all in vain. As you suffocate, tendrils of smoke softly close your eyelids.";

Report the smoke demon attacking:
	unless actor is the noun:
		say "The smoke demon casts his vaporous tendrils towards [the noun].";
	otherwise:
		say "The smoke demon strangles itself.";
	rule succeeds.

Report the smoke demon parrying:
	say "Protective layers of smoke appear in front of the smoke demon.";
	rule succeeds.

Report the smoke demon dodging:
	say "The smoke demon gently floats out of the way.";
	rule succeeds.
	
Report the smoke demon waiting when the smoke demon is insane:
	say "The smoke demon blows some smoke rings, just for fun.";
	rule succeeds.

Report the smoke demon concentrating:
	if the concentration of the smoke demon is:
		-- 1:
			say "The smoke demon seems to become denser.";
		-- 2:
			say "Even more smoke is drawn into the smoke demon's form.";
		-- 3:
			say "The smoke demon becomes even denser and now seems almost material.";
	rule succeeds.

A damage multiplier rule when the global defender is the smoke demon (this is the smoke demon denseness multiplier rule):
	if concentration of the smoke demon is:
		-- 1:
			say " + 25% (smoke demon is somewhat dense)[run paragraph on]";
			increase the attack damage by the attack damage divided by 4;
		-- 2:
			say " +50% (smoke demon is quite dense)[run paragraph on]";
			increase the attack damage by the attack damage divided by 2;		
		-- 3:
			say " + 75% (smoke demon is very dense)[run paragraph on]";
			let n be the attack damage divided by 4;
			now the attack damage is the attack damage times 2;
			decrease the attack damage by n;
		-- 4:
			say " + 100% (smoke demon is extremely dense)[run paragraph on]";
			now the attack damage is the attack damage times 2.





Chapter - Imp

Section - Statistics

There is a monster called an imp.

The description of the imp is "Imps are minor demons with unnaturally small wings. They rarely engage in combat, prefering to teleport or fly away from danger.".

The imp is demonic. The level of the imp is 0.
The imp is flyer.

The health of the imp is 10.
The melee of the imp is -2.
The defence of the imp is 9.

The body score of the imp is 4.
The spirit score of the imp is 4. 
The mind score of the imp is 4.

When play begins:
	let X be a random natural weapon part of the imp;
	now damage die of X is 3;
	now dodgability of X is 2;
	now passive parry max of X is 2;
	now active parry max of X is 0;	
	now the printed name of X is "claws".

Understand "claws" as the imp.


Section - AI

Imping is an action applying to nothing.
Imp-grabbing is an action applying to nothing.

An AI action selection rule for the imp (this is the imp considers imping rule):
	choose a blank Row in the Table of AI Action Options;
	now the Option entry is the action of the imp imping;
	now the Action Weight entry is a random number between 0 and 80.

Carry out the imp imping:
[	say "TEST: [combat state of the imp].";]
	if the combat state of the imp is at-React:
		if a random chance of 1 in 2 succeeds:
			try the imp teleporting instead;
		otherwise:
			try the imp dodging instead;
	if the combat state of the imp is at-Act:
		let n be a random number between 1 and 3;
		if n is 1:
			try the imp teleporting instead;
		if n is 2:
			try the imp imp-grabbing instead;
		if n is 3:
			if the location of the imp is the location of the player:
				say "The imp cackles in a loud, shrieking voice.".

Carry out the imp imp-grabbing:
	let lijst be a list of things;
	repeat with item running through things carried by the player:
		if item is not readied and item is not worn:
			add item to lijst;
	repeat with item running through things in the location:
		if item is not a person and item is not fixed in place and item is not scenery and item is not readied and item is not worn:
			add item to lijst;
	unless lijst is empty:
		sort lijst in random order;
		let item be entry 1 in lijst;
		say "The imp [bold type]grabs [the item][roman type] with its thieving little claws.";
		move item to imp;
	if lijst is empty:
		try the imp teleporting instead.

Special teleportation destination rule (this is the imp teleporting rule):
	if the teleportation-guy is the imp:
		if the location of the imp is the Lair of the Imp:
			now teleportation-destination is location of the player;
		otherwise:
			now teleportation-destination is Lair of the Imp.

Every turn when the imp is on-stage (this is the imp not absent AI rule):
	if main actor is the player:
		if location of the imp is not location of the player:
			if location of the imp is not Lair of the Imp:
				try the imp teleporting;
			otherwise:
				repeat with item running through things carried by the imp:
					move item to location of the imp;
				if a random chance of 1 in 5 succeeds:
					let lijst be a list of things; [Don't teleport if there is nothing to steal!]
					repeat with item running through things carried by the player:
						if item is not readied and item is not worn:
							add item to lijst;
					repeat with item running through things in the location:
						if item is not a person and item is not fixed in place and item is not scenery and item is not readied and item is not worn:
							add item to lijst;
					unless lijst is empty:
						try the imp teleporting.
			

Section - Prose				

Report an actor hitting the dead imp:
	say "The imp dies with a sad screech.";
	rule succeeds.

Report the imp hitting a dead pc:
	say "The imp's claws open your jugular vein, and hot blood spurts all around.";
	rule succeeds.

Report the imp attacking:
	unless the actor is the noun:
		say "The imp dives at [the noun], his tiny claws ready to strike.";
	otherwise:
		say "'I've always hated you!' the imp exclaims as it attacks itself.";
	rule succeeds.

Report the imp dodging:
	say "The imp tries to fly away.";
	rule succeeds.

Report the imp waiting when the imp is insane:
	say "'I will steal everything. Everything. EVERYTHING! Even myself!' the imp shouts.";
	rule succeeds.


[Chapter - Duskwing
A huge skeletal moth with a concentration-stealing ability?]




Kerkerkruip Monsters ends here.
