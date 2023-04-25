@echo off
REM Creating a Newline variable (the two blank lines are required!)
SET /p playername="Enter your player's name >>> "

SET metaDataSource=.\source\template-player-metadata.ini
SET metaDataTarget=.\source\%playername%_Haven.ini
SET uiSource=.\source\template-player-ui.ini 
SET uiTarget=.\source\UI_%playername%_Haven.ini

ECHO f | XCOPY /f /y %metaDataSource% %metaDataTarget%
ECHO f | XCOPY /f /y %uiSource% %uiTarget%