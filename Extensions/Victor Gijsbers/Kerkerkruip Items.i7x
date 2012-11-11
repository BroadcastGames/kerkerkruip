Kerkerkruip Items by Victor Gijsbers begins here.

Use authorial modesty.

Book - Treasures





Chapter - Rules for placement

Section - Valuation

Valuation is a kind of value. The valuations are minor, major, epic, unique, special and non-treasure.
[The number of treasures of each valuation which is placed is set at the end of Dungeon Generation.]
[Valuation also determines how far from Entrance Hall a treasure will generally be found.]

A thing has a valuation. A thing is usually non-treasure.

A treasure scoring rule (this is the better treasures farther away rule):
	if considered treasure is major:
		increase current room score by distance of considered room;
	if considered treasure is epic:
		increase current room score by two times distance of considered room;
	if considered treasure is special:
		increase current room score by two times distance of considered room.

The verb to value (it values, they value, it is valuing) implies the valuation property.

Section - Mood

A thing has a mood. The mood of a thing is usually non-mood.
		
A treasure scoring rule (this is the mood rule):
	if mood of considered treasure is mood of considered room:
		increase current room score by 2;
	if mood of considered treasure is non-mood:
		say "BUG: forgot to set mood of [considered treasure].".






Chapter - Treasure packs
		
[Suppose we want to put three potions of X together as a treasure. First, we probably don't want to make all tokens of a type into placeable treasures. Second, how do we get three together? The solution to both is the treasure pack: a dummy item that gets placed, and is then turned into whatever it contains.]

A treasure pack is a kind of container.

Dungeon finish rule (this is the remove treasure packs rule):
	repeat with item running through treasure packs:
		if item is not off-stage:
			let X be a random thing that contains item;
			if the location of item contains item, let X be the location of item; 
			repeat with Y running through things contained by item:
				move Y to X;
			remove item from play.






Chapter - Basic item properties

Section - Incorruptible

[Incorruptible objects are immune from all effects adversely affecting them.]

A thing can be corruptible or incorruptible. A thing is usually corruptible.

Section - Hidden identity

[Some objects appear to be A, but are actually B. In order to do handle this smoothly, including references to it, we just use object A, and replace it with object B as soon as it is used.]

The non-thing is a thing. [This is a dummy object.]
The non-thing is incorruptible.

A thing has a thing called the hidden identity. The hidden identity of a thing is usually the non-thing.

Report wearing:
	unless the hidden identity of the noun is the non-thing:
		now the hidden identity of the noun is curse-identified;
		now the player is wearing the hidden identity of the noun;
		set pronouns from the hidden identity of the noun;
		remove the noun from play;
		say "As soon as you put on [the noun], your flesh crawls. You realise that [the noun] [is-are] actually the [bold type][hidden identity of the noun][roman type]!" instead.

Report readying:
	unless the hidden identity of the noun is the non-thing:
		remove the noun from play;
		now the hidden identity of the noun is curse-identified;
		now the player carries the hidden identity of the noun;
		now the hidden identity of the noun is readied;
		set pronouns from the hidden identity of the noun;
		say "As soon as you ready [the noun], a chilling feeling goes through your arms. [The noun] [is-are] actually the [bold type][hidden identity of the noun][roman type]!" instead.


Section - Cursed

A thing can be cursed. A thing is usually not cursed.
A thing can be curse-identified. A thing is usually not curse-identified.

Understand the cursed property as describing a thing.

Section - Cursed clothing

Check taking off something:
	if the noun is cursed:
		say "A curse makes the item unmovable." instead.

After wearing a cursed not curse-identified thing:
	 say "As soon as you put on [the noun], a chill goes through your body. You realise that [the noun] [is-are] cursed and cannot be removed with normal means.";
	now the noun is curse-identified.
		
Before printing the name of a cursed curse-identified thing:
	say "cursed ".

A treasure placement rule:
	repeat with item running through corruptible clothing:
		if a random chance of 1 in 5 succeeds and a random chance of difficulty in 5 succeeds:
			now item is cursed;
			if generation info is true, say "* Cursed [item].";			
		if item is cursed and a random chance of 1 in 5 succeeds:
			now item is curse-identified.
			
Section - Cursed weapons

After readying something cursed:
	say "As soon as you ready [the noun], a chill goes through your body. You realise that [the noun] [is-are] cursed and that you cannot let go.";
	now the noun is curse-identified.

Check readying (this is the cannot ready when holding a cursed weapon rule):
	if the player has a readied cursed weapon:
		let item be a random readied cursed weapon had by the player;
		say "You cannot ready a new weapon until you have gotten rid of [the item]." instead.

Check dropping (this is the cannot drop a cursed readied weapon rule):
	if the noun is a readied cursed weapon had by the player:
		say "You cannot let go of [the noun]." instead.

Check putting it on (this is the cannot put on a cursed readied weapon rule):
	if the noun is a readied cursed weapon had by the player:
		say "You cannot let go of [the noun]." instead.
		
Check inserting it into (this is the cannot insert a cursed readied weapon rule):
	if the noun is a readied cursed weapon had by the player:
		say "You cannot let go of [the noun]." instead.

A treasure placement rule:
	repeat with item running through corruptible weapons:
		unless item is the gilded rapier or item is a natural weapon:
			if a random chance of 1 in 10 succeeds and a random chance of difficulty in 5 succeeds:
				now item is cursed;
				if generation info is true, say "* Cursed [item].";
			if item is cursed and a random chance of 1 in 4 succeeds:
				now item is curse-identified.







Chapter - Essences

Section - The Essence Kind

An essence is a kind of thing. Understand "essence" and "small" and "metal" and "bottle" as an essence.
An essence is usually magical.
An essence is usually iron.
The difficulty level of an essence is usually 1.

Inhaling is an action applying to one carried thing. Understand "inhale [thing]" as inhaling.
Does the player mean inhaling an essence: it is very likely.

Check inhaling:
	if the noun is not an essence:
		take no time;
		say "Only magical essences can be consumed through inhaling.".

First carry out inhaling:
	say "You uncork the little bottle and push its mouth deep into your [one of]left[or]right[at random] nostril, pressing the other side of your nose closed with your fingers. You inhale deeply -- and with a burning sensation, the magical essence flows up and into your brain.[run paragraph on]"

Last carry out inhaling:
	remove the noun from play.

Instead of opening an essence:
	take no time;
	say "The minute amount of magical essence would immediately evaporate and be lost forever. To use an essence, [italic type]inhale[roman type] it.".

Instead of drinking an essence:
	take no time;
	say "The gaseous essence is no fluid, and cannot be drunk. You could, however, [italic type]inhale[roman type] it.".


Section - Essence of Caution (minor)

The essence of caution is a minor essence. The indefinite article is "the".
The essence of caution is magical.
The essence of caution is iron.


A person can be cautious. A person is usually not cautious.

The description of the essence of caution is "This small metal bottle contains the magical essence of caution, distilled from the brain of [one of]the only councilor of Hargo the Furious of Yahvinna who lived to die of old age[or]the famous Algirian general al-Hawabi, who fought only two battles in a forty year campaign -- and won both[or]an unknown rogue, whose exploits would be legendary if only they were known[sticky random]. When inhaled, it confers this mindset to the user. [italic type](+3 defence bonus when retreating, -1 spirit.)[roman type]".

Carry out inhaling the essence of caution:
	say " The decision to do this suddenly seems exceedingly rash.";
	now the player is cautious;
	decrease spirit score of the player by 1.
	
An attack modifier rule (this is the caution grants better retreat rule):
	if the global defender is the player and the player is retreater:
		if the player is cautious:
			say " - 3 (essence of caution)[run paragraph on]";
			decrease the attack strength by 3.


Section - Essence of Rage (minor)

The essence of rage is a minor essence. The indefinite article is "the".
The essence of rage is magical.
The essence of rage is iron.

A person can be enraged. A person is usually not enraged.

The description of the essence of rage is "This small metal bottle contains the magical essence of rage, distilled from the brain of [one of]a berserk warrior from the far north[or]Charles IV of Averoigne, who, at the moment of his greatest victory, was poisoned by the brother he had always cherished[sticky random]. When inhaled, it confers this mindset to the user. [italic type](+2 body, +2 spirit, -2 mind, +1 attack, unable to retreat.)[roman type]".

Carry out inhaling the essence of rage:
	say " You will show them all that you are not to be toyed with!";
	increase body score of the player by 2;
	increase spirit score of the player by 2;
	decrease mind score of the player by 2;
	increase melee of the player by 1;
	now the player is enraged.

Last check retreating (this is the do not retreat when enraged rule):
	if the combat status is not peace and the player is enraged:
		let Y be the player;
		repeat with X running through persons in the location:
			if the faction of X hates the faction of the player:
				now Y is X;
		take no time;
		say "And allow [the Y] to live? Never!" instead.

Last check going (this is the do not go in combat when enraged rule):
	if the player is enraged and the combat status is not peace:
		let Y be the player;
		repeat with X running through persons in the location:
			if the faction of X hates the faction of the player:
				now Y is X;
		take no time;
		say "And allow [the Y] to live? Never!" instead.


Section - Essence of Patience (minor)

The essence of patience is a minor essence. The indefinite article is "the".
The essence of patience is magical.
The essence of patience is iron.

A person can be patient. A person is usually not patient.

The description of the essence of patience is "This small metal bottle contains the magical essence of patience, distilled from the brain of [one of]a High Priest of Yahvinna who endured fifty-three years of torture just to hear the news of his enemy's death[or]the author of 'A Careful Calculation of the first Twenty Thousand Decimals of the Squared Circle'[sticky random]. When inhaled, it confers this mindset to the user. [italic type](Whenever you wait, the tension is halved.)[roman type]".

Carry out inhaling the essence of patience:
	say " You relish the smell. There is no need to hurry.";
	now the player is patient.

Carry out waiting:
	if player is patient:
		now tension is tension divided by 2.

First report waiting:
	if player is patient:
		say "You wait patiently. You feel no tension." instead.


Section - Essence of Greed (major)

The essence of greed is a major essence. The indefinite article is "the".
The essence of greed is magical.
The essence of greed is iron.

The unlock level of essence of greed is 4.
The unlock text of essence of greed is "an essence which allows you to gain more health, at the cost of your safety".

A person can be greedy. A person is usually not greedy.

The description of the essence of greed is "This small metal bottle contains the magical essence of greed, distilled from the bones of the legendary thief Mithaldo, whose hunger for treasure was so great that he let himself be swallowed by a dragon in order to get at the jewels the beast had eaten through the centuries. When the dragon was slain some decades later, Mithaldo's bony fingers were found in the dragon's stomach, still clinging to a large diamond. [italic type](When absorbing a soul, the player receives much more health, but permanently loses one or more points of defence.)[roman type]".

Carry out inhaling the essence of greed:
	say " You want to absorb souls. Lots of souls. Now.";
	now the player is greedy.
	
The greed-health-variable is a number that varies.	
	
First absorbing a power:
	now greed-health-variable is permanent health of the player.

Last absorbing a power (called the granted power):
	if the player is greedy:
		let greed bonus be permanent health of the player minus greed-health-variable;
		increase permanent health of the player by greed bonus;
		let guy be a random person that grants the granted power;
		let n be 0;
		if level of guy is less than 3:
			now n is 1;
		otherwise:
			now n is 2;
		decrease defence of the player by n;
		say "Your greed causes you to absorb an extra [greed bonus] health, but it also gives you a permanent -[n] defence penalty.[paragraph break]".

Section - Essence of Addiction (epic)

The essence of addiction is an epic essence. The indefinite article is "the".
The essence of addiction is magical.
The essence of addiction is iron.

The unlock level of essence of addiction is 6.
The unlock text of essence of addiction is "an essence which will greatly enhance both the positive and negative effects of ment".

The description of the essence of addiction is "This small metal bottle contains the magical essence of addiction, distilled from the brain of a ment user. When inhaled, it greatly increases you addiction to ment -- increasing both the positive effects of a high and the negative effects of a low.".

Carry out inhaling the essence of addiction:
	say " You feel very [if ment timer is less than 1]low[otherwise]high[end if]!";
	increase ment addiction by 2.


















Chapter - Clothing

Section - Clothing kinds

Clothing is a kind of thing. Clothing is usually wearable.
Does the player mean wearing clothing: it is very likely.

A necklace is a kind of clothing.
A hat is a kind of clothing.
A shirt is a kind of clothing.
A cloak is a kind of clothing.
Shoes are a kind of clothing.
Trousers are a kind of clothing.
A belt is a kind of clothing.
Gauntlets are a kind of clothing.
A mask is a kind of clothing. [Includes masks, goggles, and anything else that covers the face.]
A suit is a kind of clothing. [Suits include hat, shirt, shoes, trousers, gauntlets. Furthermore, you cannot put on a suit if you wear a cursed cloak or a cursed belt.]

Last check wearing a necklace:
	if the player wears a necklace:
		let item be a random necklace worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead. 

Last check wearing a hat:
	if the player wears a hat:
		let item be a random hat worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;
	[abide by the suit check rule]. 
		
Last check wearing a shirt:
	if the player wears a shirt:
		let item be a random shirt worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;
	abide by the suit check rule.
		
Last check wearing a cloak:
	if the player wears a cloak:
		let item be a random cloak worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead. 
		
Last check wearing shoes:
	if the player wears shoes:
		let item be a random shoes worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;
	[abide by the suit check rule]. 
		
Last check wearing a trousers:
	if the player wears a trousers:
		let item be a random trousers worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;
	abide by the suit check rule. 
		
Last check wearing a belt:
	if the player wears a belt:
		let item be a random belt worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead. 
		
Last check wearing gauntlets:
	if the player encloses at least one cursed readied weapon:
		let item be a random cursed readied weapon enclosed by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead;
	if the player wears gauntlets:
		let item be a random gauntlets worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead.
	[abide by the suit check rule]. 

Last check taking off gauntlets:
	if the player encloses at least one cursed readied weapon:
		let item be a random cursed readied weapon enclosed by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead.
				
Last check wearing a mask:
	if the player wears a mask:
		let item be a random mask worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead. 

Last check wearing a suit:
[	if the player wears a hat:
		let item be a random hat worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead; ]
	if the player wears a shirt:
		let item be a random shirt worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;
	if the player wears a cursed cloak:
		let item be a random cloak worn by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead; 
[	if the player wears shoes:
		let item be a random shoes worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead; ]
	if the player wears a trousers:
		let item be a random trousers worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead; 
	if the player wears a cursed belt:
		let item be a random belt worn by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead;
[	if the player wears gauntlets:
		let item be a random gauntlets worn by the player;
		take no time;
		say "You will first have to take off [the item]." instead;]
	abide by the suit check rule. 
	
This is the suit check rule:
	if the player wears a suit:
		let item be a random suit worn by the player;
		take no time;
		say "You will first have to take off [the item].";
		rule fails.

Last check taking off a suit:
	if the player wears a cursed cloak:
		let item be a random cloak worn by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead;
	if the player wears a cursed belt:
		let item be a random belt worn by the player;
		take no time;
		say "You will first have to uncurse [the item]." instead.

Does the player mean taking off something worn:
	it is very likely.
	
Does the player mean taking off something not worn:
	it is very unlikely.	

Does the player mean wearing something worn:
	it is very unlikely.

Does the player mean wearing something not worn:
	it is very likely.


Chapter - Necklaces

Section - Tormenting necklace (major)

The tormenting necklace is a major necklace.
The tormenting necklace is deathly.

The description of the tormenting necklace is "This monstrous necklace is made of shards of glass, fossilised teeth, broken points of daggers and thorns. It is imbued with a magic that deals paralysing pain to those who are wounded in combat. [italic type](The necklace is activated in two circumstances: when the wearer is dealt damage by an attack, and when an attack by the wearer deals damage to someone else. The person who has been dealt damage will writhe in agony and must skip the next turn.)[roman type]".

The unlock level of tormenting necklace is 6.
The unlock text of tormenting necklace is "a necklace that paralyses those who get damaged in combat".

A person can be necklace-tormented. A person is usually not necklace-tormented.
The necklace-torment-counter is a number that varies. The necklace-torment-counter is 0.

Aftereffects rule (this is the tormenting necklace rule):
	if the global defender wears the tormenting necklace or the global attacker wears the tormenting necklace:
		if the attack damage is greater than 0:
			unless global defender is necklace-tormented:
				now global defender is necklace-tormented;
				increase necklace-torment-counter by 1.

This is the necklace of torment rule:
	if main actor is necklace-tormented:
		say "[The main actor] writhe[s] in [bold type]agony[roman type]!";
		now main actor is not necklace-tormented;
		decrease necklace-torment-counter by 1;
		now combat status is concluding.

The necklace of torment rule is listed before the the main actor chooses an action rule in the combat round rules.

Every turn when necklace-torment-counter is not 0:
	if combat status is peace:
		repeat with guy running through necklace-tormented people:
			now guy is not necklace-tormented.

[Torment should be canceled outside combat. I've implemented this using a counter in order to speed things up and not have to cycle through all persons every turn.]


Chapter - Hats

Section - Crown of the empire (minor)

The crown of the empire is a minor hat. The indefinite article is "the". 
The crown of the empire is civilised.
The crown of the empire is iron.

A treasure placement rule (this is the crown of empire can be crown of Hargo rule):
	if a random chance of 1 in 6 succeeds:
		now the hidden identity of the crown of the empire is the crown of Hargo.

A mind bonus rule (this is the mind bonus of the crown of the empire rule):
	if the test subject wears the crown of the empire:
		increase faculty bonus score by 2.

The description of the crown of the empire is "This harsh and heavy crown was once worn by one of the emperors of Yahvinna, a line of rulers known for their unbending willpower. [italic type](It grants a +2 mind bonus.)[roman type]".

Section - Crown of Hargo (cursed)

The crown of Hargo is a cursed curse-identified hat. The indefinite article is "the". 
The crown of Hargo is iron.

An attack modifier rule (this is the crown of Hargo rule):
	if the global defender wears the crown of Hargo:
		say " + 1 (defender is overconfident)[run paragraph on]";
		increase the attack strength by 1.

Chance to win rule when the global defender wears the crown of Hargo (this is the CTW crown of Hargo bonus rule):
	increase the chance-to-win by 1.

A mind bonus rule (this is the mind bonus of crown of Hargo rule):
	if the test subject wears the crown of Hargo:
		increase faculty bonus score by 4.

The description of Crown of Hargo is "Of all the emperors of Yahvinna, Hargo was the most arrogant and the most obstinate. This was both the foundation of his military successes and the cause of his eventual downfall. [italic type](The crown grants a +4 mind bonus, but a -1 penalty to defence.)[roman type]".

Section - Diadem of the priestess (minor)

The diadem of the priestess is a minor hat. The indefinite article is "the". 
The diadem of the priestess is civilised.
The diadem of the priestess is silver.

A spirit bonus rule (this is the spirit bonus of the diadem of the priestess rule):
	if the test subject wears the diadem of the priestess:
		increase faculty bonus score by 2.

A treasure placement rule (this is the diadem of the priestess can be devil's diadem rule):
	if a random chance of 1 in 6 succeeds:
		now the hidden identity of the diadem of the priestess is the demon lord's diadem.

The description of the diadem of the priestess is "This graceful diadem has been used thousands of times in rites for gods now long dead. [italic type](It grants a +2 spirit bonus.)[roman type]".

Section - The demon lord's diadem (cursed)

The demon lord's diadem is a cursed curse-identified hat. The indefinite article is "the". 
The demon lord's diadem is silver.

A spirit bonus rule (this is the spirit bonus of the demon lord's diadem rule):
	if the test subject wears the demon lord's diadem:
		increase faculty bonus score by 4.

The description of the demon lord's diadem is "Everyone agreed that this magical necklace helped Marcia Gracewood rise to the rank of high priestess, but only her enemies believed the rumours that if was gifted to her by a powerful demon lord in exchange for her eternal service. The manner of her 'death' proved them right in the most dramatic way possible. [italic type](It grants a +4 spirit bonus. As for the demon... well... who knows?)[roman type]".

The demon-diadem-number is a number that varies.

A treasure placement rule (this is the demon's diadem calibration rule):
	if a random chance of 1 in 3 succeeds:
		now the demon-diadem-number is 0;
	otherwise:
		now the demon-diadem-number is a random number between 10 and 80.

Every turn when the player wears the demon lord's diadem:
	if the main actor is the player:
		if the demon-diadem-number is not 0:
			decrease the demon-diadem-number by 1;
			if the demon-diadem-number is 0:
				do the claim of the demon.

To do the claim of the demon:
	remove demon lord's diadem from play;
	say "With a sudden flash, a [bold type]demoness carrying a bright red whip[roman type] appears in the room. She gestures, and the silver diadem you've been wearing disappears. 'I don't think you'll need that anymore,' she states in a harsh whisper. 'Seeing how you will be spending the rest of eternity serving my master.'";
	move the demonic mistress to the location.


[

[Currently boring, so I'm commenting it out. Should do something with grenades.]

Section - Metastasio's hat (minor)

Metastasio's hat is a minor hat. The description of Metastasio's hat is "Metastasio envisioned whole armies that would lob grenades at the enemy and would then run away as fast as they could. This hat was meant as a prototype piece of equipment to help with the latter. But the generals of Averoigne did not share Metastasio's ideas, and Louis VIII expressly forbade further production of these hats, a decision the chroniclers have all lauded.". Metastasio's hat is proper-named.
Metastasio's hat is alchemical.
Metastasio's hat is cloth.

An attack modifier rule (this is the Metastasio's hat grants worse attack and better retreat rule):
	if the player wears Metastasio's hat:
		if the global attacker is the player or (the global defender is the player and the player is retreater):
			say " - 2 (your cowardice)[run paragraph on]";
			decrease the attack strength by 2.]



Chapter - Shirts

Section - Smoky robe (minor)

The smoky robe is a minor shirt.
The smoky robe is alchemical.
The smoke robe is cloth.

The description of the smoky robe is "This robe is adorned with smoke-like, cloudy patterns.".

An attack modifier rule (this is the smoky robe is better when smoke rule):
	if the global defender wears the smoky robe:
		unless the global attacker is smoke immune:
			if the smoke penalty of the location is not 0:
				let n be the smoke penalty of the location;
				say " - [n] (the smoky robe is hard to see)[run paragraph on]";
				decrease the attack strength by n.

Chance to win rule (this is the CTW smoky robe penalty rule):
	if the global defender wears the smoky robe:
		unless the global attacker is smoke immune:
			if the smoke penalty of the location is not 0:
				let n be the smoke penalty of the location;
				decrease the chance-to-win by n.
				
Section - Bodice of body (minor)

The bodice of body is a minor shirt. The indefinite article is "the". 
The bodice of body is civilised.
The bodice of body is cloth.

A body bonus rule (this is the body bonus of the bodice of body rule):
	if the test subject wears the bodice of body:
		increase faculty bonus score by 2.

The description of the bodice of body is "This magical item is an elegant green and black garment, stiffened with whalebone and laced in front. It makes the wearer's body supple and responsive as never before. [italic type](It grants a +2 body bonus.)[roman type]".	

A treasure placement rule (this is the bodice of body can be bodice of breathlessness rule):
	if a random chance of 1 in 6 succeeds:
		now the hidden identity of the bodice of body is the bodice of breathlessness.

Section - Bodice of breathlessness (cursed)

The bodice of breathlessness is a cursed curse-identified shirt. The indefinite article is "the".
The bodice of breathlessness is cloth.

A body bonus rule (this is the body bonus of the bodice of breathlessness rule):
	if the test subject wears the bodice of breathlessness:
		let m be (concentration of the test subject * 2);
		let n be (2 - m);
		increase faculty bonus score by n.

The description of the bodice of breathlessness is "This magical item is an elegant green and black garment, stiffened with whalebone and laced in front. While it makes the wearer's body supple and responsive as never before, it has a hidden defect: when you concentrate, the lace tightens and pushes the breath from your body.[paragraph break][italic type](The bodice of breathlessness grants a +2 body bonus when not concentrated, but this is reduced by 2 for every level of concentration. Thus, you will have a -4 body penalty when you have 3 levels of concentration.)[roman type]".

To decide whether breathlessness is the case:
	if the player wears the bodice of breathlessness:
		decide yes;
	otherwise:
		decide no.

Report concentrating when breathlessness is the case (this is the bodice of breathlessness reporting rule):
	if the concentration of the actor is:
		-- 1:
			say "You are now mildly concentrated. The lace of your bodice tightens uncomfortably.";
		-- 2:
			say "You are now quite concentrated.  Your bodice tightens even more, making it hard to breath.";
		-- 3:
			say "You are now maximally concentrated.  You struggle to get air as the bodice almosy crushes your ribs.";
	rule fails.

[
[Too boring right now, because there are almost no flaming weapons.]

Section - Asbestos vest (minor)

The asbestos vest is a minor shirt. The description of asbestos vest is "While it doesn't provide much protection against weapons, this vest could be useful for its fire resistance. It bears the signs of the Montenoir alchemist guild.".
Asbestos vest is alchemical.
Asbestos vest is other-material.

Heat resistance rule (this is the asbestos vest heat resistance rule):
	if test subject wears asbestos vest:
		increase temp-heat by 4.]


Section - Monk's robe (monster)

The monk's robe is a shirt. The monk's robe is cloth.

The description of monk's robe is "A plain and simple brown robe. Years of being worn by deniers of the flesh has instilled ascetic virtues in the fabric. [italic type](-2 body, +1 mind, +1 spirit)[roman type]".

A body bonus rule (this is the body penalty of the monk's robe rule):
	if the test subject wears the monk's robe:
		decrease faculty bonus score by 2.

A mind bonus rule (this is the mind bonus of the monk's robe rule):
	if the test subject wears the monk's robe:
		increase faculty bonus score by 1.		

A spirit bonus rule (this is the spirit bonus of the monk's robe rule):
	if the test subject wears the monk's robe:
		increase faculty bonus score by 1.



Section - Robe of the Dead Mage (epic)

[Concentration not broken on hit; damage increased by 33% per point of concentration.]

The robe of the dead mage is an epic shirt.
The robe of the dead mage is magical.
The material of the robe of the dead mage is cloth.
The indefinite article of the robe of the dead mage is "the".
The difficulty level of the robe of the dead mage is 1.

The description of the robe of the dead mage is "Dominique, marquis of Savon, one of the great mages of his generation, was so fed up with losing his concentration when he was hit that he developed this robe. When the wearer is damaged in combat, he will not lose his concentration; but the protection comes from his life force, and the damage dealt to him is increased by 25% for every level of concentration. Nobody ever died with as much concentration as Dominique.".

A damage multiplier rule when the global defender wears the robe of the dead mage (this is the robe of the dead mage damage multiplier rule):
	if concentration of the global defender is:
		-- 1:
			say " + 25% (robe of the dead mage)[run paragraph on]";
			increase the attack damage by the attack damage divided by 4;
		-- 2:
			say " +50% (robe of the dead mage)[run paragraph on]";
			increase the attack damage by the attack damage divided by 2;		
		-- 3:
			say " + 75% (robe of the dead mage)[run paragraph on]";
			let n be the attack damage divided by 4;
			now the attack damage is the attack damage times 2;
			decrease the attack damage by n;
		-- 4:
			say " + 100% (robe of the dead mage)[run paragraph on]";
			now the attack damage is the attack damage times 2.

An attack modifier rule (this is the robe of the dead mage protects you rule):
	if the global defender wears the robe of the dead mage:
		say " - 1 (robe of the dead mage)[run paragraph on]";
		decrease the attack strength by 1.		

Chance to win rule (this is the CTW robe of the dead mage rule):
	if the global defender wears the robe of the dead mage:
		decrease the chance-to-win by 1.

A remain concentrated rule (this is the robe of the dead mage concentration rule):
	if global defender wears the robe of the dead mage:
		increase remain concentrated chance by 1000.


An AI action selection rule for an at-Act person (called P) (this is the robe of the dead mage discourages attacking rule):
	if chosen target wears the robe of the dead mage:
		choose row with an Option of the action of P attacking the chosen target in the Table of AI Action Options;
		decrease the Action Weight entry by the concentration of the chosen target.





Chapter - Cloaks

Section - Cloak of shadows (epic)

The cloak of shadows is an epic cloak.
The cloak of shadows is civilised.
The cloak of shadows is cloth.

The description of the cloak of shadows is "Wearing this powerful cloak allows you to become hidden and sneak through the dungeon undetected. You cannot hide in the presence of enemies, though.".

Every turn when the player wears the cloak of shadows (this is the blend into shadows rule):
	if combat status is peace:
		if the player is not hidden and the player is alive and the player is the main actor:
			hide.

After taking off the cloak of shadows when the player is hidden:
	now player is not hidden;
	say "You reveal your presence to the world.".

Section - Cloak of reflection (minor)

The cloak of reflection is a minor cloak.
The cloak of reflection is magical.
The cloak of reflection is cloth.

The unlock level of cloak of reflection is 8.
The unlock text of cloak of reflection is "a cloak that can reflect ranged attacks back to the attacker".

The description of the cloak of reflection is "A piece of silk with thousands of small magical mirrors sewn on it, this cloak is both beautiful and useful. It will sometimes, though not infallibly, reflect back ranged attacks to the attacker.".

Check an actor hitting when the noun wears the cloak of reflection (this is the cloak of reflection rule):
	if the global attacker weapon is ranged:
		if a random chance of 2 in 7 succeeds:
			say "[if the noun is the player]The[otherwise][Possessive of the noun][end if] cloak of reflection [bold type]reflects[roman type] the attack back to [the actor]!";
			try the actor hitting the actor instead.

A dungeon interest rule (this is the Malygris sometimes wears the cloak of reflection rule):
	if a random chance of 1 in 10 succeeds:
		if Malygris does not wear a cloak:
			now Malygris wears the cloak of reflection;
			if generation info is true, say "* Malygris wears the cloak of reflection.".




Chapter - Shoes

Section - Boots of the war dance (major)

The boots of the war dance are major shoes. The boots of the war dance are plural-named. The indefinite article of the boots of the war dance is "the". The description of boots of the war dance is "These graceful boots, supposedly made by the master of Algir, will grant you impeccable footwork in combat. [italic type](They give you a +1 bonus to dodging.)[roman type]".
Boots of the war dance are civilised.

This is the boots of the wardance rule:
	if the global defender is at dodge and the global defender wears the boots of the war dance:
		let n be the dodgability of global attacker weapon;
		if n is greater than 0:
			if the numbers boolean is true:
				say " - 1 (boots of the war dance)[run paragraph on]";
			decrease the attack strength by 1.

The boots of the wardance rule is listed before the standard tension attack modifier rule in the attack modifier rules.
		
A treasure placement rule (this is the war dance can be wandering rule):
	if a random chance of 1 in 4 succeeds:
		now the hidden identity of the boots of the war dance is boots of wandering.

Section - Boots of wandering (cursed)

The boots of wandering are cursed curse-identified shoes. The boots of wandering are plural-named. The indefinite article of boots of wandering is "the". The description of boots of wandering is "These graceful boots were supposed to grant their wearer impeccable footwork in combat. Unfortunately, when a prince of Algir wore these boots in the War of the Woods, they were cursed by a dying druid. They are now exceedingly unsafe.".

Before doing anything when the player wears the boots of wandering (this is the boots of wandering weirdness rule):
	if the player can move:
		if a random chance of 1 in 40 succeeds:
			if at least one room is adjacent to the location of the player:
				let place2 be the location of the player; [needed because of a bug in inform]
				let place be a random room which is adjacent to place2;
				let way be the direction from the location of the player to place;
				say "Before you can do anything, the [bold type]boots of wandering[roman type] attempt to run [way]!";
				now forced-action is true;
				try going way instead.





Chapter - Trousers


Chapter - Belts


Chapter - Gauntlets

Section - Gauntlets of grip (major)

The gauntlets of grip are major gauntlets. The gauntlets of grip are plural-named. The indefinite article is "the".
The gauntlets of grip are civilised.
The gauntlets of grip are iron.
The description of the gauntlets of grip is "These sturdy armoured gloves make it easier to parry your opponent's attacks.".

This is the gauntlets of grip rule:
	if the global defender is at parry and the global defender wears the gauntlets of grip:
		let n be the passive parry max of global attacker weapon; [active parry max doesn't matter, since gauntlets could be used themselves]
		if n is greater than 0:
			if the gauntlets of grip are not rusted:
				if the numbers boolean is true:
					say " - 1 (gauntlets of grip)[run paragraph on]";
				decrease the attack strength by 1.

The gauntlets of grip rule is listed before the dodge defence bonus rule in the attack modifier rules.

A treasure placement rule (this is the grip can be greasy rule):
	if a random chance of 1 in 4 succeeds:
		now the hidden identity of the gauntlets of grip is greasy gauntlets.

Section - Greasy gauntlets (cursed)

The greasy gauntlets are cursed curse-identified gauntlets. The greasy gauntlets are plural-named. The indefinite article is "the".
The greasy gauntlets are iron.
The description of the greasy gauntlets is "These armoured gloves are supernaturally slick and greasy. It might be hard to hold on to a weapon while wearing them.".

Last aftereffects rule (this is the greasy gauntlets rule):
	if the global attacker wears the greasy gauntlets and the attack damage is greater than 0:
		if the global attacker weapon is not ranged:
			if a random chance of 1 in 6 succeeds:
				do the grease drop with the global attacker;
	if the global defender wears the greasy gauntlets and the global defender is at parry and the attack damage is 0:
		if the passive parry max of the global attacker weapon is not 0:
			if a random chance of 1 in 4 succeeds:
				do the grease drop with the global defender.

To do the grease drop with (guy - a person):
	let item be a random readied weapon enclosed by guy;
	unless item is a natural weapon:
		now item is not readied;
		move item to the location of guy;
		if guy is the player:
			say "Because of the force of the blow and the slipperiness of the gauntlets, you [bold type]drop [the item][roman type].";
		otherwise:
			say "[The guy] drop[s] [the item].".


Chapter - Masks
[Includes masks, goggles, and anything else that covers the face.]

Section - War mask (minor)

The war mask is a minor mask. The description of the war mask is "This warlike metal mask is painted with the holy symbols of Aite, and is a sacred object of her religion.".
The war mask is religious.
The war mask is iron.

A beloved of Aite rule (this is the war mask Aite rule):
	if the test subject wears the war mask:
		rule succeeds.

Section - Blindfold (minor)

The blindfold is a minor mask. The description of the blindfold is "Wearing this blindfold will prevent you from seeing anything.".
The blindfold is civilised.
The blindfold is cloth.

A blindness rule (this is the blindfold rule):
	if the test subject wears the blindfold:
		rule succeeds.

Section - Goggles of acuity (major)

The goggles of acuity are a major mask. They are plural-named. The indefinite article is "the". 
The goggles of acuity are civilised.
The goggles of acuity are leather.

A treasure placement rule (this is the acuity can be blindness rule):
	if a random chance of 1 in 6 succeeds:
		now the hidden identity of the goggles of acuity is the goggles of blindness.

A faculty bonus rule (this is the faculty bonus of the goggles of acuity rule):
	if the test subject wears the goggles of acuity:
		increase faculty bonus score by 1.

The description of the goggles of acuity is "These goggles have been magically enchanted to make the wearer more aware of anything that happens around him. They were originally made for the marquis of Savon, who wasted his eyes poring over ancient tomes in his ill-lit library, but their use extends far beyond that of reading glasses. [italic type](They grant a +1 bonus to body, mind and spirit.)[roman type]".

Section - Goggles of blindness (cursed)

The goggles of blindness are a cursed curse-identified mask. They are plural-named. The indefinite article is "the". 
The goggles of blindness are leather.

A blindness rule (this is the goggles of blindness rule):
	if the test subject wears the goggles of blindness:
		rule succeeds.

The description of goggles of blindness is "These goggles prevent the wearer from seeing anything at all. A free-for-all fight between condemned criminals forced to wear such goggles is one of the most beloved shows during the Feast of Flesh; you smile as you recall the spectacle.".



Chapter - Suits

[Suits include hat, shirt, shoes, trousers, gauntlets. Furthermore, you cannot put on a suit if you wear a cursed cloak or a cursed belt.]

Section - Suit of plate mail (major)

The suit of plate mail is a major suit.
Suit of plate mail is alchemical.
Suit of plate mail is iron.

Constriction prevention of suit of plate mail is 3.

The description of the suit of plate mail is "Functional rather than beautiful, this suit has been made for a true warrior. It will protect you from harm, although it also slows you down.".			
			
A damage modifier rule (this is the plate mail damage modifiers rule):
	if the global defender is wearing the suit of plate mail:
		if the global attacker weapon is armour-stoppable:
			say " - 2 (plate mail)[run paragraph on]";
			decrease the attack damage by 2.

A physical damage reduction rule (this is the plate mail physical damage reduction rule):
	if the test subject is wearing the suit of plate mail:
		increase the pdr by 2.

Initiative update rule (this is the suit of plate mail takes away initiative rule):
	if the player wears suit of plate mail:
		if a random chance of 1 in 2 succeeds:
			decrease the initiative of the player by 1.

An attack modifier rule (this is the plate mail attack modifiers rule):
	if the global defender wears suit of plate mail:
		if the global defender is retreater or the global defender is runner:
			say " + 2 (slowed down by plate mail)[run paragraph on]";
			increase the attack strength by 2;
	if the global attacker wears suit of plate mail:
		say " - 1 (slowed down by plate mail)[run paragraph on]";
		decrease the attack strength by 1.

Chance to win rule (this is the CTW plate mail rule):
	if the global attacker wears suit of plate mail:
		decrease the chance-to-win by 1.

An attack modifier rule (this is the plate mail running rule):
	if the global defender is the player and the player carries the suit of plate mail:
		if the player is retreater or the player is runner:
			say " + 2 (you are slowed down by carrying a suit of plate mail)[run paragraph on]";
			increase the attack strength by 2.

An AI action selection rule for a person (called P) (this is the concentrate to compensate for the suit of plate mail rule):
	if the chosen target is wearing the suit of plate mail:
		choose row with an Option of the action of P concentrating in the Table of AI Action Options;
		increase the Action Weight entry by 3.

Section - Suit of dragon armour (epic)

The suit of dragon armour is an epic suit.
Suit of dragon armour is magical.
Suit of dragon armour is dragon skin.
Understand "armor" as the suit of dragon armour.

[The difficulty level of suit of dragon armour is 3.]

The description of the suit of dragon armour is "This lovely suit has been made of dragon leather, the most durable and most magical substance known to man. It protects the wearer against heat and most kinds of damage, but continuously drains his or her health. Use with extreme caution.".
			
Heat resistance rule (this is the dragon armour heat resistance rule):
	if test subject is wearing the suit of dragon armour:
		increase temp-heat by 4.			

[The internal heat of the suit of dragon armour is 4.]

A damage modifier rule (this is the dragon armour damage modifiers rule):
	if the global defender is wearing the suit of dragon armour:
		if the main actor is not undead:
			say " - 4 (dragon armour)[run paragraph on]";
			decrease the attack damage by 4;
		otherwise:
			say " - 2 (dragon armour)[run paragraph on]";
			decrease the attack damage by 2.

A physical damage reduction rule (this is the dragon armour damage reduction rule):
	if the test subject is wearing the dragon armour:
		increase the pdr by 2;
		if the test subject is not undead:
			increase the pdr by 2.

[Before printing the name of suit of dragon armour:
	now not-mentioning-hotness is true.

After printing the name of suit of dragon armour:
	now not-mentioning-hotness is false.]

An AI action selection rule for a person (called P) (this is the concentrate to compensate for the dragon armour rule):
	if the chosen target is wearing the suit of dragon armour:
		choose row with an Option of the action of P concentrating in the Table of AI Action Options;
		increase the Action Weight entry by 4.

Every turn when the main actor wears the dragon armour:
	if the health of the main actor is greater than 0:
		if the main actor is not undead or a random chance of 1 in 3 succeeds:
			if a random chance of 1 in 2 succeeds:
				decrease the health of the main actor by 1;
		if the health of the main actor is less than 1:
			end the story saying "The dragon armour has claimed your life".












Chapter - Grenades

Section - The grenades kind

A grenade is a kind of thing.
A grenade is usually alchemical.
A grenade is usually iron.

Instead of throwing a grenade at something:
	try throwing the noun instead.

Understand the command "throw" as something new.	
Throwing is an action applying to one carried thing. Understand "throw [something]" as throwing.
Does the player mean throwing a grenade: it is likely.

Check throwing:
	if the noun is not a grenade:
		move the noun to the location;
		say "You throw [the noun] away." instead.

Carry out throwing:
	say "Apparently, the programmer has forgotten to implement this type of grenade, because nothing happens!".

Section - Flash grenades

A flash grenade is a kind of grenade. The description of a flash grenade is "When thrown, this magical grenade emits a pulse of searing light so strong that it will blind anyone in its vicinity, even if they close their eyes. The device is universally judged to be Metastasio's most useless invention.".
A flash grenade is iron.

Instead of throwing a flash grenade:
	let lijst be a list of person;
	repeat with guy running through alive persons in the location:
		unless guy is blind:
			let n be a random number between 0 and 8; [these lines ensure that in a smoky environment, you're not always blinded]
			if guy is the player, decrease n by 2; [this is weighed a little in favour of the player, because she is throwing the grenade away from her, so there is bound to be a lot of smoke between her and the flash]
			if guy is smoke immune, increase n by 20; [but hey, if your immune to smoke, you don't benefit from this]
			unless n is less than smoke penalty of the location:
				add guy to lijst;
				now guy is blinded;
	say "You throw the flash grenade, and a blinding light [unless lijst is empty]burns away the retinae of anyone unlucky enough to see it clearly, namely, [lijst with definite articles][otherwise]flashes through the room[end if].";
	remove noun from play.

Section - Rust grenade

A rust grenade is a kind of grenade. The description of a rust grenade is "When thrown, this grenade will release a thick cloud of rust spores -- a nasty fungus that rusts away iron. Its use is forbidden in all civilised and most uncivilised countries.".
A rust grenade is iron.

Instead of throwing a rust grenade:
	say "You throw the rust grenade, and it immediately releases a cloud of rust spores!";
	remove noun from play;
	now the location is rust-spored.

Section - Smoke grenade

A smoke grenade is a kind of grenade. The description of a smoke grenade is "When thrown, this grenade will release thick clouds of smoke. You once used such devices to help the prince escape from a confrontation with the henchmen of the vengeful countess of Poitier; that was long before your relationship soured.".
A smoke grenade is iron.

Instead of throwing a smoke grenade:
	say "You throw the smoke grenade, and it immediately explodes into a large cloud of smoke.";
	remove noun from play;
	let n be a random number between 6 and 8;
	increase the smoke timer of the location by n.

Section - Fragmentation grenade

A fragmentation grenade is a kind of grenade. The description of a fragmentation grenade is "When thrown, the [if the fragmentation grenade is silver]silver [end if]fragmentation grenade will explode into many sharp fragments. These are guaranteed to deal damage to everyone in the location[if the fragmentation grenade is silver], but especially to undead and demons[end if]. You cannot handle these items without a feeling of national pride; for it was this invention of Metastasio's that allowed the outnumbered forces of Louis VIII to defeat the Algirian hordes.".
A fragmentation grenade is iron.
Understand "frag" as a fragmentation grenade.

Instead of throwing a fragmentation grenade:
	say "The grenade explodes, dealing [run paragraph on]";
	have a fragmentation event in location with noun by player.

Section - Blessed Grenade (major)

The Blessed Grenade is a major grenade. The indefinite article of the Blessed Grenade is "the". The description of Blessed Grenade is "This grenade is rumoured to be extremely effective against undead.".

Instead of throwing the Blessed Grenade:
	remove the noun from play;
	if the number of alive undead persons in the location is less than 1:
		say "As the grenade explodes you hear the singing of angels. But nothing further appears to happen.";
	otherwise:
		let K be the list of alive undead persons in the location;
		say "As the grenade explodes you hear the singing of angels, several of whom swoop down from the heavens with huge swords and eviscerate [K with definite articles].";
		repeat with guy running through K:
			now health of guy is -1;
			clean the table of delayed actions for the guy;
		if the player is dead:
			end the story saying "The undead should not seek blessings.".

Section - Grenade packs

The small-flash-grenade-pack is a minor treasure pack. Two flash grenades are in the small-flash-grenade-pack.
The small-flash-grenade-pack is elemental.

The large-flash-grenade-pack is a major treasure pack. Three flash grenades are in the large-flash-grenade-pack.
The large-flash-grenade-pack is elemental.

The small-rust-grenade-pack is a minor treasure pack. One rust grenade is in the small-rust-grenade-pack.
The small-rust-grenade-pack is barren. The rarity of the small-rust-grenade-pack is 1.

The small-smoke-grenade-pack is a minor treasure pack. One smoke grenade is in the small-smoke-grenade-pack.
The small-smoke-grenade-pack is alchemical.

The large-smoke-grenade-pack is a major treasure pack. Three smoke grenades are in the large-smoke-grenade-pack.
The large-smoke-grenade-pack is alchemical.

The small-fragmentation-grenade-pack is a minor treasure pack. One fragmentation grenade is in the small-fragmentation-grenade-pack.
The small-fragmentation-grenade-pack is alchemical.

The large-fragmentation-grenade-pack is a major treasure pack. Two fragmentation grenades are in the large-fragmentation-grenade-pack.
The large-fragmentation-grenade-pack is alchemical.











Chapter - Salves

Section - The salves kind

A salve is a kind of thing.
A salve is usually alchemical.

Applying it to is an action applying to one carried thing and one thing. Understand "apply [something] to [something]" as applying it to. Understand "rub [something] on [something]" as applying it to.
Does the player mean applying a salve to something: it is very likely.

Check putting a salve on something:
	try applying the noun to the second noun instead.

Before applying something to a person (this is the putting a salve on someone is risky rule):
	if the faction of the second noun hates the faction of the player:
		if player is not hidden:
			say "The salve at the ready, you attempt to reach [the second noun].";
			now player is risky;
			try the second noun hitting the player;
			now player is not risky;
			if player is dead:
				stop the action;
		now player is not hidden.

Carry out applying something to something:
	say "Nothing particular seems to happen.";
	remove the noun from play.

Section - Unguentum argenti

An unguentum argenti is a kind of salve. The plural of unguentum argenti is unguenta argenti. The description of unguentum argenti is "An expensive alchemical salve that can be rubbed on iron objects to turn them into silver.". Understand "salve" as unguentum argenti.

Instead of applying unguentum argenti to an iron weapon:
	say "You carefully apply the salve to [the second noun], turning it into a silver weapon.";
	now the second noun is silver;
	remove noun from play.

Instead of applying unguentum argenti to an alive iron person:
	say "You apply the salve wherever you can, significantly weakening [the second noun].";
	now the second noun is silver;
	remove noun from play;
	now permanent health of the second noun is permanent health of the second noun divided by 2;
	now health of the second noun is health of the second noun divided by 2;
	if health of the second noun is less than 1:
		now health of the second noun is 1.

Instead of applying unguentum argenti to an iron thing:
	say "You carefully apply the salve to [the second noun], turning it into silver.";
	now second noun is silver;
	remove noun from play.
		
The small-unguentum-argenti-pack is a minor treasure pack. One unguentum argenti is in the small-unguentum-argenti-pack.
The small-unguentum-argenti-pack is alchemical.

The large-unguentum-argenti-pack is a major treasure pack. Two unguenta argenti are in the large-unguentum-argenti-pack.
The large-unguentum-argenti-pack is alchemical.











Chapter - Sprayables

Section - The sprayables kind

A sprayable is a kind of thing.
A sprayable is usually alchemical.

Spraying is an action applying to one carried thing. Understand "spray [something]" as spraying.
Does the player mean spraying a sprayable: it is very likely.

Check spraying:
	if noun is not a sprayable:
		take no time;
		say "That cannot be sprayed." instead.

Section - Fungicide contraption

The fungicide contraption is a minor sprayable. The description of the fungicide contraption is "This weird contraption contains a powerful fungus killing substance. Spraying it will immediately clear a room of all spores.".

Carry out spraying fungicide contraption:
	if location is rust-spored:
		say "You spray the fungicide all around. The rust spores blacken and wither.";
		now location is not rust-spored;
	otherwise:
		say "You spray the fungicide all around.".








Chapter - Scrolls

Section - The scrolls kind

A scroll is a kind of thing. There is a scroll. [So that iterating through scroll subkinds works!]
A scroll is usually improper-named.
A scroll is usually civilised.
A scroll is usually paper.
A scroll is readable.
Understand "scroll" as a scroll.
Understand "scrolls" as the plural of a scroll.

Carry out reading a scroll:
	remove the noun from play.

Section - Unidentified Scrolls

[ Scroll names are used for printing and parsing scrolls. Each kind of scroll needs a corresponding scroll name value.
If the scroll kind is just one word, it's easy - follow the example of the scroll of teleportation.
If it has more than one word you'll need to add extra understand phrases - see the scroll of curse removal. ]

A scroll name is a kind of value.
Some scroll names are defined by the Table of Scroll Names.

Table of Scroll Names
scroll name	printed name	obfuscated	unhealthy
mort	"MORT EILYSH"	true	false
naar	"NAAR OD ERAE"	true
dolp	"DOLP ZEEZ"	true
chetnak	"CHETNAK"	true
cistrob	"CISTROB JIRSGEV"	true
twan	"TWAN METIER"	true
hermei	"HERMEI LE SCHIM"	true
lonsifira	"LONSIFIRA"	true
kripmeteel	"KRIPMETEEL"	true
souspenot	"SOUSPENOT"	true
shalm	"SHALM SAWESAS"	true
petrichor	"PETRICHOR"	true
malleote	"MALLEOTE"	true
paven	"PAVEN"	true
ancholain	"ANCHOLAIN"	true

Definition: a scroll name is obfuscated if obfuscated of it is true.
Definition: a scroll name is unhealthy if unhealthy of it is true.
Definition: a scroll name is healthy if obfuscated of it is false and unhealthy of it is false.

Understand "mort" and "eilysh" as mort.
Understand "naar" and "od" and "erae" as naar.
Understand "dolp" and "zeez" as dolp.
Understand "cistrob" and "jirsgev" as cistrob.
Understand "twan" and "metier" as twan.
Understand "hermei" and "le" and "schim" as hermei.
Understand "shalm" and "sawesas" as shalm.

A scroll is usually privately-named.
A scroll can be identified or unidentified. A scroll is usually identified.
A scroll has a scroll name.
A scroll has a scroll name called alternative name.

Understand the scroll name property as describing a scroll.
Understand the alternative name property as describing a scroll when the scroll is identified.

Understand "labelled" as a scroll when the scroll is unidentified.
Understand "of" as a scroll when the scroll is identified.

Rule for printing the name of a scroll (called S) (this is the printing the name of scrolls rule):
	let name be printed name of scroll name of S;
	if S is unidentified:
		say "scroll labelled [name]";
	otherwise if the name is not "":
		say "scroll of [name]";
	otherwise:
		say "scroll of [scroll name of S]";

Rule for printing the plural name of a scroll (called S) (this is the printing the plural name of scrolls rule):
	let name be printed name of scroll name of S;
	if S is unidentified:
		say "scrolls labelled [name]";
	otherwise if the printed name of the scroll name of S is not "":
		say "scrolls of [name]";
	otherwise:
		say "scrolls of [scroll name of S]";
	
Instead of examining an unidentified scroll:
	say "You'll have to read this scroll to find out what it does."

[ Some I6 for iterating through the scroll subkinds ]
Include (-

! Find the kind of an object
[ KindOfObj obj;
	return KindHierarchy-->( ( obj.KD_Count ) * 2 );
];

! Test if a kind is a subkind of another kind
[ TestSubkind subclass superclass	i;
	! These classes are outside the kind heirarchy and must be dealt with first
	if ( subclass == Class or Object or Routine or String or VPH_Class )
		rfalse;
	
	while (1)
	{
		if ( KindHierarchy-->i == subclass )
			return KindHierarchy-->( KindHierarchy-->(i + 1) * 2 ) == superclass;
		i = i + 2;
	}
];

-).

To decide what object is the kind of (obj - object):
	(-  KindOfObj( {obj} ) -).

To repeat with (loopvar - nonexisting K variable) running through the/-- kinds of (kind - name of kind of value of kind K) begin -- end:
	(- objectloop( {loopvar} && metaclass({loopvar}) == Class && TestSubkind({loopvar}, KindOfObj({-default-value-for:kind})) ) -).
	
To repeat with (loopvar - nonexisting object variable) running through the/-- instances of (kind - object) begin -- end:
	(- objectloop( {loopvar} && {loopvar} ofclass {kind} ) -).

When play begins (this is the obfuscate scrolls rule):
	let names be the list of obfuscated scroll names;
	sort names in random order;
	repeat with S running through the kinds of scroll:
		let N be entry 1 of names;
		remove entry 1 from names;
		repeat with I running through the instances of S:
			now I is unidentified;
			now the alternative name of I is the scroll name of I;
			now the scroll name of I is N;

To identify (S - a scroll):
	repeat with I running through the instances of the kind of S:
		now I is identified;
		let temp name be the scroll name of I;
		now the scroll name of I is the alternative name of I;
		now the alternative name of I is temp name;

First carry out reading an unidentified scroll:
	identify the noun;
	say "It is [a noun]!";




Section - Scroll of teleportation

Table of Scroll Names (continued)
scroll name
teleportation

A scroll of teleportation is a kind of scroll.
A scroll of teleportation is teleportation.
The description of a scroll of teleportation is "Reading this scroll will instantaneously transport the reader to another location.".
The plural of scroll of teleportation is scrolls of teleportation.

Carry out reading a scroll of teleportation:
	unless teleportation is impossible for the player:
		teleport the player;
	otherwise:
		say "The scroll disappears, but something has stopped you from teleporting.";


Section - Scroll of Ghoulification		

Table of Scroll Names (continued)
scroll name	unhealthy
ghoulification	true

A scroll of ghoulification is a kind of scroll.
A scroll of ghoulification is ghoulification.
The description of a scroll of ghoulification is "Reading this scroll will turn you into an undead ghoul.".
The plural of scroll of ghoulification is scrolls of ghoulification.

Carry out reading a scroll of ghoulification:
	ghoulify the player;


Section - Scroll of Knowledge

Table of Scroll Names (continued)
scroll name
knowledge

A scroll of knowledge is a kind of scroll.
A scroll of knowledge is knowledge.
The description of a scroll of knowledge is "Reading this scroll will grant you knowledge about all other scrolls.".
The plural of scroll of knowledge is scrolls of knowledge.

Carry out reading a scroll of knowledge:
	say "The nature of scrolls suddenly becomes clear to you.";
	repeat with S running through the kinds of scroll:
		repeat with I running through the instances of S:
			if I is unidentified:
				identify I;
				break;


Section -  Scroll of Curse Removal

Table of Scroll Names (continued)
scroll name
curse removal

Understand "curse" and "removal" as curse removal.

A scroll of curse removal is a kind of scroll.
A scroll of curse removal is curse removal.
The description of a scroll of curse removal is "Reading this scroll will remove any curses from the item you are carrying."
The plural of scroll of curse removal is scrolls of curse removal.

Definition: a thing (called the item) is uncurseable if (item is cursed and item is corruptible) or (hidden identity of item is not non-thing and hidden identity of item is cursed and hidden identity of item is corruptible).

Carry out reading a scroll of curse removal:
	if the player has at least one uncurseable thing:
		let K be a list of things;
		repeat with item running through uncurseable things had by the player:
			if hidden identity of item is not non-thing and hidden identity of item is corruptible:
				now hidden identity of item is not cursed;
			if item is corruptible:
				now item is not cursed;
			add item to K; [we uncurse the hidden identity, but we do not reveal it!]
		say "The scroll removes the curse[s] from [K with definite articles].";
	otherwise:
		say "The scroll does nothing, since you had no cursed items.";
	now the player is not death-cursed;


Section - Scroll of Shadows

[ The scroll of shadows conflicts with the cloak of shadows, so we must call the scroll name shadows-name. ]
Table of Scroll Names (continued)
scroll name	printed name
shadows-name	"shadows"

Understand "shadows" and "shadow" as shadows-name.

A scroll of shadows is a kind of scroll.
A scroll of shadows is shadows-name.
The description of a scroll of shadows is "Reading this scroll will make you hidden, though it may fail if enemies are nearby."
The plural of scroll of shadows is scrolls of shadows.

Carry out reading a scroll of shadows:
	if the player is hidden:
		say "The scroll disappears and you remain hidden.";
	otherwise:
		hide;


Section - Scroll of Summoning

Table of Scroll Names (continued)
scroll name	unhealthy
summoning	true

A scroll of summoning is a kind of scroll.
A scroll of summoning is summoning.
The description of a scroll of summoning is "Reading this scroll will summon an undead monster. Be careful, for it does not make the creature friendly."
The plural of scroll of summoning is scrolls of summoning.

Carry out reading a scroll of summoning:
	if at least one alive undead person is off-stage:
		let guy be a random alive off-stage undead person;
		move guy to location of the player;
		say "You speak the awful spell, and [a guy] appears before you!";
		now guy is follower;
		unless the follower percentile chance of guy is greater than 60:
			now follower percentile chance of guy is 60;
	otherwise:
		say "You speak the awful spell, but nothing happens. The planes must not be well-aligned.";


[Section - Scroll of fireworks

The description of a scroll of fireworks is "Who knows what this weird scroll will do?". The plural of scroll of fireworks is scrolls of fireworks.
A scroll of fireworks is paper.
The printed name of a scroll of fireworks is "scroll of fireworks". [Circumventing bug 459: http://inform7.com/mantis/view.php?id=459.]

Carry out reading a scroll:
	if scroll-effect of the noun is scroll-fireworks:
		remove noun from play;
		say "Gratuitous purple fireworks fill the room, spelling the words [bold type]YOU HAVE LOST THE GAME[roman type].";
		rule succeeds.]


Section - Scroll of the blade

Table of Scroll Names (continued)
scroll name	printed name
the-blade	"the blade"

Understand "blade" and "the blade" as the-blade.

A scroll of the blade is a kind of scroll.
A scroll of the blade is the-blade.
The description of a scroll of the blade is "Reading this scroll will make a temporary adamantine blade appear in your hands.".
The plural of scroll of the blade is scrolls of the blade.

Carry out reading a scroll of the blade:
	repeat with item running through weapons enclosed by the player:
		if item is readied:
			now item is not readied;
	move adamantine blade to player;
	now adamantine blade is readied;
	do the adamantine blade shuffle;
	if the player is not ethereal:
		say "A magical sword formed of adamant suddenly appears in your hands!";
	otherwise:
		say "A magical sword formed of adamant suddenly appears in your hands -- and falls through them to the ground!";
		move adamantine blade to the location;

The adamantine blade is an adamant weapon. The description of the adamantine blade is "This is a magical blade made of the hardest substance in the universe. You wonder how long the spell will last." Understand "sword" as the adamantine blade.

The adamantine blade timer is a number that varies.

To do the adamantine blade shuffle:
	now the damage die of the adamantine blade is a random number between 5 and 12;
	now the weapon attack bonus of the adamantine blade is a random number between -1 and 5;
	now the weapon damage bonus of the adamantine blade is a random number between 0 and 2;
	now the dodgability of the adamantine blade is a random number between 1 and 4;
	now the passive parry max of the adamantine blade is a random number between 1 and 4;
	now the active parry max of the adamantine blade is a random number between 1 and 4;
	now the adamantine blade timer is a random number between 12 and 22.

Every turn when the adamantine blade is not off-stage (this is the adamantine blade countdown rule):
	if the main actor is the player:
		now adamantine blade timer is adamantine blade timer minus 1;
		if the adamantine blade timer is less than 1:
			if the adamantine blade is enclosed by the player and the adamantine blade is readied:
				say "The adamantine blade [bold type]vanishes[roman type] as suddenly as it appeared!";
			otherwise if the adamantine blade is visible:
				say "The adamantine blade suddenly vanishes.";
			remove the adamantine blade from play.


Section - Scroll of Protection

A person has a number called the hit protection. The hit protection of a person is usually 0.

Table of Scroll Names (continued)
scroll name
protection

A scroll of protection is a kind of scroll.
A scroll of protection is protection.
The description of a scroll of protection is "Reading this scroll will protect you against all damage from the next one or two attacks."
The plural of scroll of protection is scrolls of protection.

Carry out reading a scroll of protection:
	say "You feel protected.";
	if hit protection of the player is less than 2:
		now hit protection of the player is 1;
		if a random chance of 4 in 10 succeeds:
			now hit protection of the player is 2;

Status rule (this is the protection status rule):
	if hit protection of the player is greater than 0:
		say "You are [bold type]protected[roman type] from damage dealt by attacks.[line break][run paragraph on]".

A damage multiplier rule when the hit protection of the global defender is greater than 0 (this is the hit protection damage multiplier rule):
	say " - 100% (protection)[run paragraph on]";
	now the attack damage is 0;
	decrease hit protection of the global defender by 1.


[Section - Scroll of Etherealness

Table of Scroll Names (continued)
scroll name
etherealness

A scroll of etherealness is a kind of scroll.
A scroll of etherealness is etherealness.
The description of a scroll of etherealness is "Reading this scroll will temporarily turn you ethereal."
The plural of scroll of etherealness is scrolls of etherealness.

Carry out reading a scroll of etherealness:
	say "You become ethereal[if the player has a not radiance thing]; your possessions drop to the ground[end if]!";
	make the player ethereal;
	now ethereal timer of the player is a random number between 10 and 15;]
		

Section - Scroll of Skill

Table of Scroll Names (continued)
scroll name
skill

A scroll of skill is a kind of scroll.
A scroll of skill is skill.
The description of a scroll of skill is "Reading this scroll will give you a temporary bonus to body, mind and spirit."
The plural of scroll of skill is scrolls of skill.

Carry out reading a scroll of skill:
	say "You suddenly feel very skilled!";
	increase the player skill bonus timer by a random number between 15 and 20;

The player skill bonus timer is a number that varies. The player skill bonus timer is 0.

Every turn when the player is the main actor (this is the decrease player skill bonus timer rule):
	if player skill bonus timer is greater than 0:
		decrease player skill bonus timer by 1;
		if player skill bonus timer is 0:
			say "You suddenly feel [bold type]unskilled[roman type].".

Status rule (this is the skilled status rule):
	if player skill bonus timer is greater than 0:
		say "You are [bold type]skilled[roman type]: +3 bonus to body, mind and spirit.[line break][run paragraph on]".

A faculty bonus rule (this is the faculty bonus of being skilled rule):
	if the test subject is the player and the player skill bonus timer is greater than 0:
		increase faculty bonus score by 3.



Section - Scroll of Death

The unholy wave rules are a rulebook.

An unholy wave rule (this is the standard unholy wave rule):
	say "A wave of unholy energy is released, dealing [run paragraph on]";
	let n be the number of alive not undead persons in the location;
	let original n be n;
	if n is greater than 0:
		repeat with guy running through all alive not undead persons in the location:
			let m be a random number between 3 and 6;
			decrease health of guy by m;
			say "[if n is 1 and original n is not 1]and [end if][m] damage to [the name of the guy][if guy is dead] (which is [bold type]lethal[roman type])[end if][roman type][if concentration of the guy is greater than 0 and guy is alive] (which breaks [possessive of the guy] concentration)[end if][if n is not 1]; [otherwise].[line break][end if][run paragraph on]";
			now concentration of the guy is 0;
			decrease n by 1;
			if n is 0:
				say ""; [For an extra newline. Don't ask.]
	otherwise:
		say "no damage to anyone.";
	if health of the player is less than 1:
		end the story saying "Your life force has been negated".

Table of Scroll Names (continued)
scroll name	unhealthy
death	true

A scroll of death is a kind of scroll.
A scroll of death is death.
The description of a scroll of death is "Reading this scroll will deal damage to all non-undead creatures in the room."
The plural of scroll of death is scrolls of death.

Carry out reading a scroll of death:
	consider the unholy wave rules;



Chapter - Scroll packs

Section - Teleportation, small (minor)

The small-scroll-of-teleportation-pack is a minor treasure pack.
The small-scroll-of-teleportation-pack is civilised.
One scroll of teleportation is in the small-scroll-of-teleportation-pack.

The second-small-scroll-of-teleportation-pack is a minor treasure pack.
The second-small-scroll-of-teleportation-pack is civilised.
One scroll of teleportation is in the second-small-scroll-of-teleportation-pack.
	
Section - Teleportation, large (major)	
	
The large-scroll-of-teleportation-pack is a major treasure pack.
Two scrolls of teleportation are in the large-scroll-of-teleportation-pack. [Stock the large-scroll-of-teleportation-pack with 2 clones of scroll of teleportation.]
The large-scroll-of-teleportation-pack is civilised.

Section - Knowledge (minor)

The small-scroll-of-knowledge-pack is a minor treasure pack.
The small-scroll-of-knowledge-pack is civilised.
One scroll of knowledge is in the small-scroll-of-knowledge-pack.

The second-small-scroll-of-knowledge-pack is a minor treasure pack. 
The second-small-scroll-of-knowledge-pack is civilised.
One scroll of knowledge is in the second-small-scroll-of-knowledge-pack.

Section - Ghoulification (minor)

The small-scroll-of-ghoulification-pack is a minor treasure pack.
One scroll of ghoulification is in the small-scroll-of-ghoulification-pack.
The small-scroll-of-ghoulification-pack is civilised.
The difficulty level of the small-scroll-of-ghoulification-pack is 1.

Section - Curse removal, small (minor)

The small-scroll-of-remove-curse-pack is a minor treasure pack.
The small-scroll-of-remove-curse-pack is civilised.
One scroll of curse removal is in the small-scroll-of-remove-curse-pack.

The second-small-scroll-of-remove-curse-pack is a minor treasure pack.
The second-small-scroll-of-remove-curse-pack is civilised.
One scroll of curse removal is in the second-small-scroll-of-remove-curse-pack.

Section - Remove curse, large (major)

The large-scroll-of-remove-curse-pack is a major treasure pack.
The large-scroll-of-remove-curse-pack is civilised.
Two scrolls of curse removal is in the large-scroll-of-remove-curse-pack.
The rarity of large-scroll-of-remove-curse-pack is 1.

Section - Shadows, small (minor)

The small-scroll-of-shadows-pack is a minor treasure pack.
The small-scroll-of-shadows-pack is civilised.
One scroll of shadows is in small-scroll-of-shadows-pack.

The second-small-scroll-of-shadows-pack is a minor treasure pack.
The second-small-scroll-of-shadows-pack is civilised.	
One scroll of shadows is in second-small-scroll-of-shadows-pack.

Section - Shadows, large (major)

The large-scroll-of-shadows-pack is a major treasure pack.
The large-scroll-of-shadows-pack is civilised.
Two scrolls of shadows is in large-scroll-of-shadows-pack.

Section - Summoning (minor)

The small-scroll-of-summoning-pack is a minor treasure pack.
The small-scroll-of-summoning-pack is magical.	
The difficulty level of the small-scroll-of-summoning-pack is 1.
One scroll of summoning is in the small-scroll-of-summoning-pack.

[Section - Fireworks (minor)

The small-scroll-of-fireworks-pack is a minor treasure pack.
The small-scroll-of-fireworks-pack is magical.	
The rarity of small-scroll-of-fireworks is 5.

A treasure placement rule:
	copy scroll of fireworks to small-scroll-of-fireworks-pack.]

Section - Blade, small (minor)

The small-scroll-of-the-blade-pack is a minor treasure pack.
The small-scroll-of-the-blade-pack is civilised.
One scroll of the blade is in the small-scroll-of-the-blade-pack.

Section - Blade, large (major)

The large-scroll-of-the-blade-pack is a major treasure pack.
The large-scroll-of-the-blade-pack is civilised.
Two scrolls of the blade is in the large-scroll-of-the-blade-pack.

Section - Protection (major)

The small-scroll-of-protection-pack is a major treasure pack.
The small-scroll-of-protection-pack is civilised.
One scroll of protection is in the small-scroll-of-protection-pack.

Section - Skill, small (minor)

The small-scroll-of-skill-pack is a minor treasure pack.
The small-scroll-of-skill-pack is civilised.	
One scroll of skill is in the small-scroll-of-skill-pack.

Section - Skill, large (major)

The large-scroll-of-skill-pack is a major treasure pack.
The large-scroll-of-skill-pack is civilised.
Two scrolls of skill is in the large-scroll-of-skill-pack.
The rarity of large-scroll-of-skill-pack is 1.

Section - Death, small (minor)

The small-scroll-of-death-pack is a minor treasure pack.
The small-scroll-of-death-pack is civilised.
The difficulty level of small-scroll-of-death-pack is 1.
One scroll of death is in the small-scroll-of-death-pack.

Section - Death, large (major)

The large-scroll-of-death-pack is a major treasure pack.
The large-scroll-of-death-pack is civilised.
The difficulty level of large-scroll-of-death-pack is 1.
Two scrolls of death are in the large-scroll-of-death-pack.

Section - Deathly [summon, ghoul, death], (major)

The deathly-pack is a major treasure pack.
The deathly-pack is deathly.
The difficulty level of deathly-pack is 1.
One scroll of summoning is in the deathly-pack.
One scroll of ghoulification is in the deathly-pack.
One scroll of death is in the deathly-pack.

Section - Combat [blade, protection], (major)

The combat-scroll-pack is a major treasure pack.
The combat-scroll-pack is civilised.
One scroll of the blade is in the combat-scroll-pack.
One scroll of protection is in the combat-scroll-pack.

Section - Thief [shadows, teleport, ethereal], (major)

The thief-scroll-pack is a major treasure pack.
The thief-scroll-pack is civilised.
The difficulty level of thief-scroll-pack is 1.
Two scrolls of shadows are in the thief-scroll-pack.
One scroll of teleportation is in the thief-scroll-pack.
[One scroll of etherealness is in the thief-scroll-pack.]














Part - Weapons

Chapter - Sword

A sword is a kind of weapon. 
A sword is usually iron.
The active parry max of a sword is usually 4.

Understand "blade" as a sword.

Section - Smoky blade (minor)

The smoky blade is a minor sword.
The smoky blade is alchemical.
The smoky blade is iron.

The description of the smoky blade is "While otherwise a normal sword, it has been enchanted to look like smoke or fog.".

The unlock level of smoky blade is 2.
The unlock text of smoky blade is "a sword that is hard to see in smoke-filled areas"

An attack modifier rule (this is the smoky blade is better when smoke rule):
	if the global attacker weapon is the smoky blade:
		unless the global defender is smoke immune:
			if the smoke penalty of the location is not 0:
				let n be the smoke penalty of the location;
				say " + [n] (the smoky blade is hard to see)[run paragraph on]";
				increase the attack strength by n.

Chance to win rule (this is the CTW smoky blade penalty rule):
	if the chosen weapon is the smoky blade:
		unless the chosen target is smoke immune:
			if the smoke penalty of the location is not 0:
				let n be the smoke penalty of the location;
				increase the chance-to-win by n.

Section - Sneaky sword (monster)

There is a sword called sneaky sword. The description of sneaky sword is "This sword is especially suitable for making sneaky attacks."

The special weapon info of the sneaky sword is "; +2 damage when hidden[run paragraph on]"

A damage modifier rule (this is the sneaky sword damage bonus rule):
	if the global attacker weapon is the sneaky sword:
		if the global attacker is hidden:
			say " + 2 (sneaky attack)[run paragraph on]";
			increase the attack damage by 2.


[Section - Claymore (monster)

Fafhrd carries a sword called claymore. The description of claymore is "It looks like a normal sword that has seen a lot of use."]


Chapter - Rapier

A rapier is a kind of weapon. 
A rapier is usually iron.

Understand "blade" as a rapier.

The active parry max of a rapier is usually 3.
The damage die of a rapier is usually 5.

Section - Gilded rapier

The gilded rapier is a rapier. The player carries the gilded rapier. The gilded rapier is readied.
The gilded rapier is iron.

The description of the gilded rapier is "You took it from the body of the young Count of Poitier, that fateful night in Maurice's whorehouse. He would nevermore plot against you.".





Chapter - Dagger

A dagger is a kind of weapon. 
A dagger is usually iron.

The damage die of a dagger is usually 3.
The weapon attack bonus of a dagger is usually -1.
The dodgability of a dagger is usually 3.
The passive parry max of a dagger is usually 1.
The active parry max of a dagger is usually 1.
The weapon damage bonus of a dagger is usually 0.

An attack modifier rule (this is the dagger extra tension attack bonus rule):
	if the global attacker weapon is a dagger:
		let n be 0;
		now n is the tension divided by 2;
		if n is not 0:
			say " + ", n, " (dagger benefits from tension)[run paragraph on]";
			increase the attack strength by n.

Chance to win rule when the chosen weapon is a dagger (this is the CTW dagger concentration bonus rule):
	let n be the tension divided by 2;
	increase the chance-to-win by n.
		
A damage modifier rule (this is the dagger extra tension damage bonus rule):
	if the global attacker weapon is a dagger:
		let n be 0;
		now n is the tension divided by 4;
		if n is not 0:
			say " + ", n, " (dagger benefits from tension)[run paragraph on]";
			increase the attack damage by n.

The special weapon info of a dagger is usually "; benefits from tension[run paragraph on]".

Section - Gorgeous dagger (minor)

The gorgeous dagger is a minor dagger.
The gorgeous dagger is civilised.
The gorgeous dagger is iron.

The description of the gorgeous dagger is "Adorned with gold and a large emerald at the end of the hilt, this dagger is not only beautiful, but also perfect for precise attacks in tense situations. The decadence of its design proves it to be of Yahvinnean origin.".

Section - Dagger of the double strike (major)

The dagger of the double strike is a major dagger.
The dagger of the double strike is civilised.
The dagger of the double strike is iron.

The damage die of the dagger of the double strike is 1.
The weapon attack bonus of the dagger of double strike is -2.

The description of the dagger of the double strike is "The dagger looks dull and far from dangerous. But appearances deceive, for this weapon has been imbued with a dangerous magic.".

The special weapon info of the dagger of the double strike is "; allows its wielder to strike again immediately if the first attack did no damage[run paragraph on]".

Making-double-strike is a truth state that varies. Making-double-strike is false.

Last after reporting an actor hitting (this is the hit again with the dagger of double strike rule):
	if the global attacker weapon is the dagger of double strike:
		if making-double-strike is false:
			if the attack damage is 0:
				if the global attacker is alive and the global defender is alive:
					now making-double-strike is true;
					say "The dagger of the double strike slashes out again!";
					try the global attacker hitting the global defender;
					now making-double-strike is false.

Section - The backstabber (cursed)

The backstabber is a cursed curse-identified dagger. The backstabber is proper-named.
The backstabber is iron.

A treasure placement rule (this is the double strike can be backstabber rule):
	if a random chance of 1 in 4 succeeds:
		now the hidden identity of the dagger of double strike is the backstabber.

The description of the backstabber is "This treacherous blade sometimes strikes out at random people -- including yourself.".
The special weapon info of the backstabber is "; sometimes attacks a random person instead of the intended target[run paragraph on]"

Making-backstab is a truth state that varies. Making-backstab is false.

Check an actor hitting when the global attacker weapon is the backstabber (this is the hitting with the backstabber rule):
	if making-backstab is false:
		if a random chance of 1 in 2 succeeds:
			let X be a random alive person in the location of the actor;
			unless X is the noun:
				say "The [bold type]backstabber[roman type] attacks [X] instead!";
				now making-backstab is true;
				try the actor hitting X;
				now making-backstab is false;
				stop the action;



Section - Vampiric dagger (major)

The vampiric dagger is a major dagger.
The vampiric dagger is deathly.
The vampiric dagger is iron.

The description of the vampiric dagger is "This sleek dagger will magically transfer some of the damage dealt to the target as health to its owner.".

The special weapon info of the vampiric dagger is "; leeches some health (works much better for vampires)[run paragraph on]".

The damage die of the vampiric dagger is 3.
The weapon attack bonus of the vampiric dagger is 1.
The dodgability of the vampiric dagger is 3.
The passive parry max of the vampiric dagger is 1.
The active parry max of the vampiric dagger is 1.
The weapon damage bonus of the vampiric dagger is 0.

An aftereffects rule (this is the vampiric dagger leeches rule):
	if the global attacker weapon is the vampiric dagger and the the attack damage is greater than 0:
		let n be a random number between 1 and the attack damage;
		unless the global attacker is the player and the current form is vampire-form:
			if n is greater than 1:
				now n is a random number between 1 and 2;
			let m be permanent health of the global attacker;
			decrease m by health of the global attacker;
			if m is less than n:
				now n is m;
			if n is less than 0:
				now n is 0;
		increase health of the global attacker by n;
		unless n is 0:
			say "The vampiric dagger [bold type]transfers [n] health[roman type] to [the global attacker].".
			
			




Chapter - Axe

An axe is a kind of weapon. 
An axe is usually iron.

The damage die of an axe is usually 4.
The weapon attack bonus of an axe is usually -1.
The weapon damage bonus of an axe is usually 2.
The dodgability of an axe is usually 3.
The passive parry max of an axe is usually 1.
The active parry max of an axe is usually 2.

Section - Fearsome axe (minor)

The fearsome axe is a minor axe.
The fearsome axe is deathly.
The fearsome axe is iron.

The damage die of the fearsome axe is 5.
The active parry max of the fearsome axe is 1.

The description of the fearsome axe is "While not exactly a nimble weapon, this fearsome axe is certainly able to deal out some punishment.".

Section - Executioner's axe (major)

The executioner's axe is a major axe.
The executioner's axe is deathly.
The executioner's axe is iron.

The description of the executioner's axe is "This is the blade that chopped off the head of Philip the Traitor after he had been found guilty of murdering his brother, Charles IV. Ever since, pilgrims have flocked to Montenoir's temple of Nomos to see and revere it. How it has ended up in this dungeon is anyone's guess.".

The unlock level of the executioner's axe is 10.
The unlock text of the executioner's axe is "an unwieldy axe that deals massive damage".


The damage die of the executioner's axe is 7.
The weapon damage bonus of the executioner's axe is 4.
The active parry max of the executioner's axe is 0.
The dodgability of the executioner's axe is 3.
The weapon attack bonus of the executioner's axe is -3.

A damage modifier rule (this is the executioner's axe extra tension damage bonus rule):
	if the global attacker weapon is the executioner's axe:
		let n be 0;
		now n is the tension divided by 3;
		if n is not 0:
			if the numbers boolean is true, say " + ", n, " (executioner's axe benefits from tension)[run paragraph on]";
			increase the attack damage by n.

An attack modifier rule (this is the executioner's axe is better in temple of Nomos rule):
	if the global attacker weapon is the executioner's axe and the location is the Temple of Nomos:
		if the numbers boolean is true, say " + 3 (Nomos likes the executioner's axe)[run paragraph on]";
		increase the attack strength by 3.

Chance to win rule (this is the CTW executioner's axe in temple of Nomos rule):
	if chosen weapon is the executioner's axe and the location is the Temple of Nomos:
		increase the chance-to-win by 3.

The special weapon info of the executioner's axe is "; better tension damage bonus[run paragraph on]".





Chapter - Scythe

A scythe is a kind of weapon. 
A scythe is usually iron.

The damage die of a scythe is usually 10.
The weapon attack bonus of a scythe is usually -2.
The dodgability of a scythe is usually 3.
The passive parry max of a scythe is usually 1.
The active parry max of a scythe is usually 1.
The weapon damage bonus of a scythe is usually 0.







Chapter - Staves 

A staff of pain is a kind of weapon. The plural of staff of pain is staves of pain.
A staff of pain is usually wood. A staff of pain is ranged.
A staff of pain is size-agnostic.

The damage die of a staff of pain is usually 4.
The weapon attack bonus of a staff of pain is usually 1.
The dodgability of a staff of pain is usually 0.
The active parry max of a staff of pain is usually 1.
The passive parry max of a staff of pain is usually 0.
The weapon damage bonus of a staff of pain is usually 0.




Chapter - Maces

A mace is a kind of weapon. 
A mace is usually iron.

The damage die of a mace is usually 5.
The weapon attack bonus of a mace is usually 0.
The weapon damage bonus of a mace is usually 1.
The dodgability of a mace is usually 2.
The passive parry max of a mace is usually 2.
The active parry max of a mace is usually 2.

Section - Spiked mace of the ape king (major)

The spiked mace of the ape king is a major mace.
The spiked mace of the ape king is barren.
The spiked mace of the ape king is iron.

Table of Spiked Mace of the Ape King
Blood	Dam	WDB	DOD	PPM		APM	Size
0		3		0		1		2		2		tiny
1		3		0		1		2		2		tiny
2		4		0		1		2		2		small
3		5		1		1		2		2		small
4		5		1		1		2		2		medium
5		6		2		2		2		2		medium
6		7		2		2		2		1		large
7		8		3		2		1		1		large
8		8		3		3		1		1		huge
9		9		4		3		1		0		huge
10		10		4		3		1		0		gargantuan
11		11		4		3		0		0		gargantuan

Spiked-mace-blood is a number that varies. Spiked-mace-blood is 0.

To set stats for the spiked mace of the ape king:
	now the spiked mace of the ape king is iron;
	now the spiked mace of the ape king is not rusted;
	if spiked-mace-blood is less than 12:
		choose row with a blood of spiked-mace-blood in the Table of Spiked Mace of the Ape King;
		now the damage die of the spiked mace of the ape king is Dam entry;
		now the weapon damage bonus of the spiked mace of the ape king is WDB entry;
		now the dodgability of the spiked mace of the ape king is DOD entry;
		now the passive parry max of the spiked mace of the ape king is PPM entry;
		now the active parry max of the spiked mace of the ape king is APM entry;
		now the size of the spiked mace of the ape king is Size entry;
	otherwise:
		let guy be a random person who has the spiked mace of the ape king;
		unless guy is nothing: [who knows whether we program animated weapons at some point?]
			say "The [bold type]spiked mace of the ape king[roman type] suddenly grows so big that [guy] cannot hold on to it. It [bold type]crashes[roman type] to the floor!";
			move spiked mace of the ape king to location of guy;
		otherwise:
			say "The [bold type]spiked mace of the ape king[roman type] suddenly [bold type]crashes[roman type] to the floor!";
			move spiked mace of the ape king to location of spiked mace of the ape king;
		now spiked mace of the ape king is not readied;
		now spiked mace of the ape king is fixed in place;
		now description of spiked mace of the ape king is "The mace has grown to such proportions that not even the strongest man in the world would be able to lift it.".
	
Last dungeon interest rule (this is the spiked mace stat set rule): [this puts us after the rule that may randomly change the size of a weapon]
		set stats for the spiked mace of the ape king.
		
The description of spiked mace of the ape king is "A ball studded with sharp spikes and put at the end of a stick makes a simple but effective weapon. It is currently of [size of spiked mace of the ape king] size.".

An aftereffects rule (this is the spiked mace grows rule):
	if the global attacker weapon is the spiked mace of the ape king:
		if the attack damage is greater than 0:
			increase spiked-mace-blood by 1;
			set stats for the spiked mace of the ape king;
			if spiked-mace-blood is less than 12:
				say "The spiked mace of the ape king grows!"
				



Chapter - Other weapons

Section - Magical pickaxe (major)

The pickaxe is a major iron barren weapon.
The pickaxe is a digging tool.

Understand "axe" as the pickaxe.

The description of the pickaxe is "Used by wizards to construct their dungeons, a magical pickaxe can be used to dig tunnels in whatever direction you wish. Just dig north, for instance. In a pinch, it can also serve as a weapon.".

The unlock level of the magical pickaxe is 9.
The unlock text of the magical pickaxe is "an item that functions both as a weapon and as a tool for digging tunnels".

The damage die of the pickaxe is 5.
The weapon attack bonus of the pickaxe is -1.
The weapon damage bonus of the pickaxe is 2.
The dodgability of the pickaxe is 3.
The passive parry max of the pickaxe is 1.
The active parry max of the pickaxe is 2.

Section - Glass Cannon (epic)
[Very good weapon which halves you permanent health.]

The glass cannon is an epic weapon.
The glass cannon is magical.
The material of the glass cannon is glass.

The glass cannon is ranged.
The glass cannon is size-agnostic.

The description of the glass cannon is "At first sight this seems to be nothing but a foot-long tube of glass. However, it is a very powerful weapon, the shots of which can quickly destroy even the most powerful enemy. But be warned: not only does the glass cannon make you an easier target, it is also the case that when you ready the weapon, you [bold type]permanently[roman type] lose half of your health.".

The damage die of the glass cannon is 0.
The weapon attack bonus of the glass cannon is 3.
The weapon damage bonus of the glass cannon is 12.
The dodgability of the glass cannon is 2.
The passive parry max of the glass cannon is 0.
The active parry max of the glass cannon is 3.

An attack modifier rule (this is the being a glass cannon rule):
	if the global defender weapon is the glass cannon:
		say " + 3 (you are a glass cannon)[run paragraph on]";
		increase the attack strength by 3.		

Chance to win rule (this is the CTW glass cannon bonus rule):
	if the global defender weapon is the glass cannon:
		increase the chance-to-win by 3.

After readying the glass cannon:
	say "You feel fragile.";
	now permanent health of player is permanent health of the player divided by 2;
	now health of the player is health of the player divided by 2;
	if player is dead:
		end the story saying "You were a little too fragile for that.".

An aftereffects rule (this is the glass cannon shatters when used to parry rule):
	if the global defender weapon is the glass cannon:
		if the global defender is at parry and the the attack damage is 0:
			say "The impact shatters the glass cannon.";
			remove the glass cannon from play.

The special weapon info of the glass cannon is "; makes you easier to hit; halves your health[run paragraph on]".

Section - Nunchuck (monster)

The pair of nunchucks are a weapon. The pair of nunchucks is wood. Understand "nunchuck" and "nunchuk" and "nunchuks" as the pair of nunchucks. The pair of nunchucks is ambiguously plural.
The description of the pair of nunchucks is "These two pieces of wood with a metal chain between them can be surprisingly dangerous.".
The active parry max of the pair of nunchucks is 4.







Chapter - Miscellaneous Items


Section - Dimensional anchor (minor)

A dimensional anchor is a minor thing. The description of the dimensional anchor is "The tiny anchor made of marble may seem nothing but a sailor's souvenir, but appearances deceive. It has been imbued with a powerful spell that makes it impossible to teleport away from the room it is in. An ornate 'N' at the bottom designates it as the work of the mysterious sorcerer Ningauble.".
The dimensional anchor is magical.
The dimensional anchor is stone.

A teleport impossible rule (this is the dimensional anchor rule):
	if the location of the test subject encloses the dimensional anchor:
		rule succeeds.

Section - Magical spade (major)

The magical spade is a major thing. The magical spade is a digging tool. The description of the magical spade is "Used by wizards to construct their dungeons, a magical spade can be used to dig tunnels in whatever direction you wish. Just dig north, for instance.".
The magical spade is magical.
The magical spade is iron.			

Section - Vial of Purification (minor)

The vial of purification is a minor religious glass thing. Understand "water" and "waters" as vial of purification. The description of vial of purification is "Drinking the water in this small vial might cure you of some unfortunate afflictions.".

Instead of eating vial of purification:
	try drinking vial of purification.
	
Instead of drinking vial of purification:
	remove noun from play;
	say "The waters purify you of all undead influences.";
	now ghoul-form is not form-active;
	now vampire-form is not form-active;
	now vampirebat-form is not form-active;		
	turn the player into human-form.

Section - Rod of the Master Builder (epic)

The rod of the master builder is an epic thing.
The rod of the master builder is barren.
The rod of the master builder is stone.

The description of the rod of the master builder is "This powerful artefact looks like a smooth tube of white stone. It can be used to [italic type]dig[roman type] new tunnels and [italic type]collapse[roman type] old passages; and it also allows its possessor to walk away from combat in relative safety.".

The rod of the master builder is a digging tool.
The rod of the master builder is a collapsing tool.

An attack modifier rule (this is the rod of master builder attack modifiers rule):
	if the global defender is the player and the player has the rod of the master builder:
		if the player is retreater or the player is runner:
			say " - 2 (rod of the master builder)[run paragraph on]";
			decrease the attack strength by 2.

A damage multiplier rule when the player has the rod of the master builder (this is the rod of master builder damage multiplier rule):
	if the global defender is the player and (the player is retreater or the player is runner):
		say " - 50% (rod of the master builder)[run paragraph on]";
		now the attack damage is the attack damage divided by 2.

Instead of readying the rod of the master builder:
	say "It is not weapon. You can use it without readying it.".
			
Section - Drakul's Lifeblood (epic)

Drakul's lifeblood is an epic deathly glass thing. Understand "blood" and "vial" as Drakul's lifeblood. The description of Drakul's lifeblood is "This small vial holds the blood of a powerful vampire. Drinking it might have far-reaching consequences.".
The difficulty level of Drakul's lifeblood is 2.


Instead of eating Drakul's lifeblood:
	try drinking Drakul's lifeblood.
	
Instead of drinking Drakul's lifeblood:
	remove noun from play;
	say "As you gulp down the blood, you feel your whole body changing -- it becomes cold and fragile, but also swift and lean. Magical power courses through your veins.";
	vampirise the player.








Chapter - Ment

A package of ment is a kind of thing. The plural of package of ment is packages of ment. The description of a package of ment is "Carefully folded in paper, this is just enough ment to get you pumped up for combat. You could snort it whenever you wish[if the ment addiction is 0] -- though you are a little hesitant to start your habit again[end if].".
A package of ment is paper.

[There are ten packages of ment.] The player carries three packages of ment.

The ment addiction is a number that varies. The ment addiction is 0.

To decide which number is the ment bonus:
	let n be ment addiction;
	decide on n.

The ment timer is a number that varies. The ment timer is 0.

Every turn when the main actor is the player:
	if the ment timer is greater than 0:
		decrease the ment timer by 1;
		if the ment timer is 0:
			say "As suddenly as it began, the rush given by the [bold type]ment[roman type] falls away. You are left feeling empty and only half alive.".

The OD timer is a number that varies. The OD timer is 0.

Every turn when the main actor is the player:
	if the OD timer is greater than 0:
		decrease the OD timer by 1;
		if the OD timer is 7:
			say "Your breathing is becoming heavy and irregular.";
		if the OD timer is 3:
			say "Respiration becomes more difficult by the second. Your heartbeat feels very irregular.";
		if the OD timer is 0:
			end the story saying "You OD'ed".

A faculty bonus rule (this is the ment ability bonus rule):
	if the test subject is the player:
		if ment timer is greater than 0:
			increase faculty bonus score by ment bonus;
			[say " + [ment bonus] (ment)[run paragraph on]"].
				
A faculty bonus rule (this is the feeling down ability penalty rule):
	if the test subject is the player:
		if the ment addiction is greater than 0:
			if the ment timer is 0:
				decrease faculty bonus score by ment addiction;
				[say " - [ment addiction] (feeling down)[run paragraph on]"].				
				
An attack modifier rule (this is the ment attack and defence bonus rule):
	if the global attacker is the player:
		if ment timer is greater than 0:
			if the numbers boolean is true, say " + [ment bonus] (ment)[run paragraph on]";
			increase the attack strength by ment bonus;
	if the global defender is the player:
		if ment timer is greater than 0:
			if the numbers boolean is true, say " - [ment bonus] (your defence increased by ment)[run paragraph on]";
			decrease the attack strength by ment bonus.
			
Chance to win rule (this is the CTW ment penalty rule): [To make sure the AI correctly guesses its chance to win.]
	if the ment timer is greater than 0:
		decrease the chance-to-win by ment bonus.			

A damage modifier rule (this is the ment damage bonus rule):
	if the global attacker is the player:
		if ment timer is greater than 0:
			if the numbers boolean is true, say " + [ment bonus] (ment)[run paragraph on]";
			increase the attack damage by ment bonus;
	if the global defender is the player:
		if ment timer is greater than 0:
			if the numbers boolean is true, say " - [ment bonus] (ment makes you shrug off damage)[run paragraph on]";
			decrease the attack damage by ment bonus.

An attack modifier rule (this is the feeling down attack penalty rule):
	if the global attacker is the player:
		if the ment addiction is greater than 0:
			if the ment timer is 0:
				if the numbers boolean is true, say " - [ment addiction] (feeling down)[run paragraph on]";
				decrease the attack strength by ment addiction.	


Snorting is an action applying to one carried thing. Understand "snort [thing]" and "sniff [thing]" as snorting. Understand "use [package of ment]" as snorting.

Check snorting:
	if the noun is an essence:
		try inhaling the noun instead;
	otherwise:
		if the noun is not a package of ment:
			take no time;
			say "You cannot snort that." instead.

Check snorting a package of ment when the combat status is not peace:
	unless player is hidden:
		take no time;
		say "There is absolutely no way you could pull that off in a combat situation. The ment would get spilled everywhere." instead.

Carry out snorting a package of ment:
	if the ment addiction is 0 or at least three packages of ment are on-stage:
		say "You take a small mirror, a razor and a straw from one of your pockets, and carefully cut the ment on the surface of the mirror. The light blue powder is looking very good. Using the straw, you manage to get almost all of it in your nose. You inhale sharply a few times -- and feel the ment do its awesome work.[paragraph break]Everything becomes clear, sharp, easy. You feel strong. You feel focused.";
	otherwise:
		say "You repeat the ritual: cutting, forming into a line, snorting through the straw, inhaling sharply. The ment kicks in immediately.";
	have the ment kick in.

To have the ment kick in:
	increase the ment addiction by 1;
	[unless ment timer is 0:
		if a random chance of 1 in 2 succeeds:
			if the OD timer is 0:
				now the OD timer is 12;
			otherwise:
				end the game saying "You OD'ed.";]
	now the ment timer is a random number between 10 and 15;
	remove the noun from play.
	


Status rule (this is the ment status rule):
	if ment timer is greater than 0:
		say "You are under the influence of [bold type]ment[roman type]: +[ment bonus] attack, +[ment bonus] damage, -[ment bonus] enemy damage, +[ment bonus] defence, +[ment bonus] to all abilities.[line break][run paragraph on]";
	if ment timer is 0 and ment addiction is greater than 0:
		say "You feel [bold type]down[roman type]: -[ment addiction] attack, -[ment addiction] to all abilities[line break][run paragraph on]".

Instead of eating a package of ment (this is the ment cannot be eaten rule):
	take no time;
	say "Ment has to be taken through the nose, not the mouth. Try snorting it.".











Chapter - Tomes

A tome is a kind of thing.
A tome is readable.
The indefinite article of a tome is usually "the".

The description of a tome is usually "Who knows what will happen if you decide to read this legendary work of magic?"

Section - Tome of Transmutation

The Tome of Transmutation is a tome. First-trans-material is a material that varies. Second-trans-material is a material that varies.
Tome of Transmutation is paper.
Tome of Transmutation is magical.


When play begins (this is the set tome of transmutation rule):
	let n be a random number between 1 and 10;
	choose row n in Table of Tome Possibilities;
	now first-trans-material is the first-material entry;
	now second-trans-material is the second-material entry.

Table of Tome Possibilities
first-material		second-material
wood			iron
wood			silver
wood			adamant
iron				wood
iron				silver
iron				adamant
iron				glass
silver			iron
silver			wood
silver			adamant

[The description of tome of transmutation is "When read, this powerful book will turn all [material-adjective of first-trans-material] objects into [second-trans-material].".]

Carry out reading the tome of transmutation:
	say "You speak the mighty words of power. In a flare of magical light, the tome disappears -- and all [material-adjective of first-trans-material] objects have turned into [second-trans-material]!";
	remove tome of transmutation from play;
	repeat with item running through things:
		if material of item is first-trans-material:
			now material of item is second-trans-material;


Section - Tome of Sudden Death

The Tome of Sudden Death is a tome.
Tome of Sudden Death is paper.
Tome of Sudden Death is magical.

The sudden-death-boolean is a truth state that varies. Sudden-death-boolean is false.

Every turn when sudden-death-boolean is true:
	repeat with guy running through alive persons:
		now health of guy is 1.

Carry out reading the tome of sudden death:
	say "Life is fragile. A single blow could kill a man.";
	remove tome of sudden death from play;
	now sudden-death-boolean is true;


Section - Tome of the Brightest Flame

The Tome of the Brightest Flame is a tome.
Tome of the Brightest Flame is paper.
Tome of the Brightest Flame is magical.

Brightest-flame-counter is a number that varies. Brightest-flame-counter is 0.

Carry out reading the tome of the brightest flame:
	say "You have chosen fame over a long life. Achieve it while you may!";
	now hit protection of the player is 50;
	now brightest-flame-counter is 31.
	
A physical damage reduction rule (this is the brightest flame damage reduction rule):
	if the test subject is the player and brightest-flame-counter is not 0:
		increase the pdr by 100.	
	
Every turn when brightest-flame-counter is not 0:
	if main actor is the player:
		decrease brightest-flame-counter by 1;
		if brightest-flame-counter is 30 or brightest-flame-counter is 20 or brightest-flame-counter is 10 or brightest-flame-counter is 5 or brightest-flame-counter is 1:
			say "You will [bold type]die[roman type] in [brightest-flame-counter] turn[unless brightest-flame-counter is 1]s[end if]!";
		if brightest-flame-counter is 0:
			end the story saying "Your moment of fame has come and gone.".

Victory message rule (this is the brightest flame message rule):
	if brightest-flame-counter is not 0:		
		end the story saying "You have destroyed your foe, and will be able to enjoy your victory for another [brightest-flame-counter] turns!";
		rule succeeds.






Kerkerkruip Items ends here.