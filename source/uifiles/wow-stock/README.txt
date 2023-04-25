Drakah Emulated UI - Warcraft Version
Created by Drakah
Version 7.3 - September 8, 2010
Folder Name: drakah_emu_warcraft
www.shakahr.com

For help, please visit the forums at www.shakahr.com


Introduction:
*** Resolution: 1280 x 1024 or higher Recommended ***
*** Can be used on lower resolutions, but you will need to unlock/move the windows around & edit the INI file for exact window placements for your resolution **
*** Do not have EverQuest running when doing installing.
*** Do not use /loadskin in-game unless you already had it loaded.
*** ALWAYS use a fresh installation of an interface!

Interface Specific Information:
~ All graphics have been re-modified to simulate the Warcraft UI for use with EverQuest.
There are some portions that came from public screenshots, user submissions, and their own Interface Art that were re-textured for clarity. You can visit the Warcraft website at www.blizzard.com/wow.

Please read the enlosed "Update_Anim_Instructions.txt" file to update your own interface if you need to update your own EQUI_Animations file. Really should do this when you install this new, otherwise you may have problems. Make sure you use the file from the actual Default folder, and not the old one.



Installation:
(please note: the ZIP file was created by ZIP'ing the actual folder)

1) Extract ZIP file into your EverQuest/uifiles directory.

2) Double check the extraction.
Your UI folder structure, as an example, should look like this:

o Everuest
o o uifiles
o o o {Interface Folder Name}

3) If an "UI_Drakah_druzzil.ini" file exists, rename it to your Character Name and Server Name accordingly, and paste it into your EverQuest main directory. Please be sure the folder name of the interface matches the name of the interface listed within the INI file, otherwise it will not load. The name of the folder for this interface is listed in the header of this document for reference.



Target Window wrong size?
-------------------------

For some reason, the Target Window size sometimes does not size correctly when the game reads the XML file to relay it to the UI INI file.
I have notified SKlug about this.

Here is how to fix it:

Method A)

1) Do NOT have EverQuest running. 
2) Go to your EverQuest\uifiles\{name_of_the_UI} 
3) Open the EQUI_TargetWindow.xml file in Notepad 
4) Scroll all the way down to the end where you see the Screen item="TargetWindow" section
5) Remove that section that says [TargetWindow] and the section under it that pertains to that window. This way, EQ will redraw that information when you log in again.

Method B)

1) Do NOT have EverQuest running. 
2) Go to your EverQuest\uifiles\{name_of_the_UI} 
3) Open the EQUI_TargetWindow.xml file in Notepad 
4) Scroll all the way down to the end where you see the Screen item="TargetWindow" section 
5) Note the Size for X and Y (example: 256 x 96) 
6) Close that, and goto your EverQuest directory. 
7) Open your UI_{character name}_{server name}.ini file in Notepad 
8) Go to the menu, and select Edit --> Find 
9) In the box, type: TargetWindow 
10) Close the Find box, and you will see you are at the section that pertains to the TargetWindow for your UI setup of that window. 
11) Scroll down some and find the information that is for the resolution you are running the game at:

Example, if you are running at 1680x1050, you should find this:

Width1680x1050=124
Height1680x1050=125

Change that to this:

Width1680x1050=256
Height1680x1050=96

If your resolution is NOT listed, then just add it in.
If you do not know what resolution you are running, you can check the other sections of the UI INI file for repetative width & height sizes. That is probably the one you are running.
 
Now that you have the resolution fixed, make sure this tag is correct too to be certain. This does not have a resolution attached to the code intentionally.

WidthWindowed=256
HeightWindowed=93


Double check your changes. If it doesn't work, you probably either mistyped something, or you inserted the wrong resolution that you use.

Save the file and close. Launch EverQuest.





Loot Window wrong size?
-----------------------

This means you were using your old UI INI file from a different interface. Unfortunately, the LootWnd does not parse the correct window size when you /loadskin in game. To fix this, make sure you do not have EverQuest running, otherwise the UI INI file will not parse or save.

You can either use the UI INI file found in the drakah_emu_warcraft folder for your character, or you can edit your current one.
If you did use the one in the folder, then you are using a resolution that I have not come accross.

Open up your UI_YourCharacterName_YourServerName.ini file in the EverQuest directory.

Look for the tag that says: LootWnd

Replace that "section" with the following data. Each section is separated by brackets [ ]
Be sure your resolution is listed below. If not, you will need to make up your own resolution tag with the Width/Height of 270x325.
After you paste/edit the information into your UI INI file, save and exit. Load up EverQuest and your lootwindow should be fine.


[LootWnd]
Width=365
Height=265
Width1024x768=365
Height1024x768=265
Width1280x1024=365
Height1280x1024=265
Width1440x900=365
Height1440x900=265
Width1680x1050=365
Height1680x1050=265
BGTint.red=255
BGTint.green=255
BGTint.blue=255
Fades=true
Delay=2000
Duration=500
Alpha=255
FadeToAlpha=255
Locked=false
BGType=1
XPos1280x1024=450
YPos1280x1024=367
XPos1440x900=450
YPos1440x900=367
XPos1024x768=318
YPos1024x768=148
INIVersion=1





ENJOY!

Regards,

Drakah Sha`Kahr
www.shakahr.com