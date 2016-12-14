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

[Windows by Kerkerkruip uses language constructs we need from: ]
Include RuntimeInterpreterDetect by Kerkerkruip.
Include DataValues by Kerkerkruip.



[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]

Place is a room. "Here it starts. You can go East or West.".

Wild West is a room, west of Place. "East is Place."

Field is a room, east of Place. "West is Place".

