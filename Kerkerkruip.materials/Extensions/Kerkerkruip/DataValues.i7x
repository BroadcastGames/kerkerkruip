DataValues by Kerkerkruip begins here.

[
DataValues is a hacked-up extension that steals some of the essential
   language alterations that Windows.i7x seems to use.
	 In a full Kerkerkruip set of extensions, this won't be needed.
]

Section - Low-level Access to Data Values

Table of Data Storage
key (number)	value (number)
--	--
with 14 blank rows

Table of Victories
Victories	Level	Best-Level
0	0	0

To decide which number is data value (X - a number):
	if there is a key of X in the Table of Data Storage:
		choose row with a key of X in the Table of Data Storage;
		decide on the value entry;
	otherwise:
		decide on 0;

To set data value (X - a number) to (Y - a number), table only (this is data-value setting):
	if there is a key of X in the Table of Data Storage:
		choose row with a key of X in the Table of Data Storage;
	otherwise:
		choose a blank row in the Table of Data Storage;
		now the key entry is X;
	now the value entry is Y;
	[if not table only:
		save data storage;]


Section - Accessing Data Values

data storage parameter is a kind of value. The data storage parameters are defined by the Table of Data Value Labels.

A data storage parameter has a number called enabled value. A data storage parameter has a number called disabled value. A data storage parameter has a number called data value index.

Table of Data Value Labels
data storage parameter	data value index	enabled value	disabled value
total victories	1	--	--
current difficulty	2	--	--
highest achieved difficulty	3	--	--
advanced content	4	1	0
main menu graphics flag	5	1	-1
session flag	6	1	0
window panels flag	7	0	1
menu hyperlinks	8	1	-1
sound	9	1	-1
screen reader mode	10	1	-1

To decide which number is (P - a data storage parameter) as a number: (- {P} -);

To decide which number is the/-- number/setting of (P - a data storage parameter):
	decide on data value (P as a number);

To decide whether (P - a data storage parameter) is/are unset:
	if disabled value of P is 0 or enabled value of P is 0, no;
	Decide on whether or not number of P is 0;

To decide whether (P - a data storage parameter) is/are enabled:
	decide on whether or not number of P is enabled value of P;

To decide whether (P - a data storage parameter) is/are disabled:
	decide on whether or not number of P is disabled value of P;

To decide whether main menu graphics is/are enabled:
	if screen reader mode is enabled, no;
	decide on whether or not main menu graphics flag is enabled;

To decide whether window panels is/are enabled:
	if screen reader mode is enabled, no;
	decide on whether or not window panels flag is enabled;

To decide whether main menu graphics is/are disabled:
	if screen reader mode is enabled, yes;
	decide on whether or not main menu graphics flag is disabled;

To decide whether window panels is/are disabled:
	if screen reader mode is enabled, yes;
	decide on whether or not window panels flag is disabled;

To increase the/-- (param - a data storage parameter) by (N - a number), table only:
	if table only:
		set param to (number of param) + N, table only;
	otherwise:
		set param to (number of param) + N;

To set the/-- (param - a data storage parameter) to (N - a number), table only:
	let P be param as a number;
	if table only:
		set data value P to N, table only;
	otherwise:
		set data value P to N;

To enable (param - a data storage parameter), table only:
	if table only:
		set param to enabled value of param, table only;
	otherwise:
		set param to enabled value of param;

To disable (param - a data storage parameter), table only:
	if table only:
		set param to disabled value of param, table only;
	otherwise:
		set param to disabled value of param;

To toggle (param - a data storage parameter), table only:
	if param is enabled:
		if table only:
			disable param, table only;
		otherwise:
			disable param;
	otherwise:
		if table only:
			enable param, table only;
		otherwise:
			enable param;



Section - Dependent Extensions for Windows

[Include Kerkerkruip Actions and UI by Victor Gijsbers.]
[Include Kerkerkruip Persistent Data by Victor Gijsbers.]


Chapter - More synonyms

Understand "jump in/into [something]" as entering.
Understand "throw [something] in/into [something]" as inserting it into.
Understand "drop [something] in/into [something]" as inserting it into.

[ Allow "insert noun" to automatically choose the appropriate machine. ]
Understand "insert [something] into/in [something]" as inserting it into.
Does the player mean inserting into a container:
	it is likely.

[Understand the command "equip" as "use".
Understand "use [clothing]" as wearing.
Understand "use [scroll]" as reading.
Understand "use [grenade]" as throwing.
Understand "use [fungicide contraption]" as spraying.
Understand "use [weapon]" as readying.]

Understand "activate [something]" as switching on.
Understand "deactivate [something]" as switching off.
Understand the command "enable" as "activate".
Understand the command "disable" as "deactivate".
Understand the command "toggle" as "switch".


Chapter - Option commands

[An option is a kind of value.
The invalid option is an option.]

Understand "[option]" and "the [option]" as "[option token]".

Enabling is an action out of world applying to one option.
Understand "activate [option token]" as enabling.
Understand "turn [option token] on" as enabling.
Understand "turn on [option token]" as enabling.
Understand "switch on [option token]" as enabling.
Understand "switch [option token] on" as enabling.

Disabling is an action out of world applying to one option.
Understand "deactivate [option token]" as disabling.
Understand "turn [option token] off" as disabling.
Understand "turn off [option token]" as disabling.
Understand "switch off [option token]" as disabling.
Understand "switch [option token] off" as disabling.

Toggling is an action out of world applying to one option.
Understand "switch [option token]" as toggling.
Understand "[option]" as toggling.


DataValues ends here.
