RuntimeInterpreterDetect by Kerkerkruip begins here.

[
RuntimeInterpreterDetect is a hacked-up extension that steals some of the essential
   language alterations that Windows.i7x seems to use.
	 In a full Kerkerkruip set of extensions, this won't be needed.
]

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

RuntimeInterpreterDetect ends here.
