"KerkerkruipWindowExample0" by "Community"

[
Stripped down from the original story game for sake of technical demonstration.
Kerkerkruip is published under the GNU GPL~3 license. You may download the source code for Kerkerkruip at \ https://github.com/i7/kerkerkruip
]

The story headline is "Glulx technical demonstration".
The story genre is "Other".
The release number is 1.


Section - 3rd Party Inclusions


Include Basic Screen Effects by Emily Short.
Include version 1/140209 of Interpreter Sniffing by Friends of I7.


Section - broken logic hacks

[ This belongs in Actions, but it has to be defined before the Glimmr and Windows extensions. We should move this somewhere sensible later, and maybe use it for all the options? ]
An option is a kind of value.
The information panels are an option.


[How does this get defined in the original project? ]
long status is a truth state variable. long status is false.


Section - Graphics and Windows

[ Disable the status line purely to prevent reverse mode from being switched on. This doesn't prevent us from opening the status line manually, which we already had to do. ]
Use no status line.


Include version 15/160609 of Flexible Windows by Jon Ingold.
Include Hyperlinks by Kerkerkruip.
Include version 1/150128 of Menus by Dannii Willis.
Include Windows by Kerkerkruip.



Attribute printed is a truth state variable. Attribute printed is false.

To check initial position of attribute:
	if attribute printed is false:
		say "You are [run paragraph on]";
		now attribute printed is true;
	otherwise:
		say ", [run paragraph on]".



[Include Kerkerkruip Start and Finish by Victor Gijsbers.]

Section - Detecting whether or not the Gargoyle config file has been applied

[ We can detect whether or not the Gargoyle config file has been applied by checking whether one of the text colours has been changed. Warning, user style 2 will be pretty ugly if it has! ]

GarGlk is an IO implementation.

To decide whether the gargoyle config file was used:
	(- DetectGargoyleConfigFile() -).

Include (-
[ DetectGargoyleConfigFile res;
	! Don't test the style in CocoaGlk because it will crash
	if ( ~~(+ CocoaGlk detection flag +) )
	{
		res = glk_style_measure( gg_mainwin, style_User2, stylehint_TextColor, gg_arguments );
	}
	return res && gg_arguments-->0 == $F400A1;
];
-).

An IO implementation detection rule (this is the test for GarGlk rule):
	if the Gargoyle config file was used:
		rule succeeds with result GarGlk;




Include DataValues by Kerkerkruip.



[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]

Place is a room. "Here it starts".

Wild West is a room, west of Place. "East is Place."

Field is a room, east of Place. "West is Place".

