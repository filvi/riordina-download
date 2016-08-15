@echo off
title Download Reorder ~ Filippo Vicari ~ info@filippovicari.com

echo. --------------------------------------
echo Programma: RoboBackup
echo. --------------------------------------
echo Descrizione: Riordina la tua cartella Download
echo. --------------------------------------
echo Autore: Filippo Vicari
echo. --------------------------------------
echo Bug report info@filippovicari.com
echo. --------------------------------------


rem elimina tutti i file per MAC
del /s  ._*
rd /s /q __MACOSX


echo.
echo Sto spostando i documenti nella cartella %userprofile&\download:
echo.
ROBOCOPY /S %userprofile%\download *.pdf %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.doc %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.docx %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.otd %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.odp %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.ods %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.odg %userprofile%\Documents\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.txt %userprofile%\Documents\DaSistemare /MOVE
echo.
echo Documenti completata
echo.
echo Sto spostando le immagini nella cartella %userprofile&\Pictures:
echo.
ROBOCOPY /S %userprofile%\download *.png %userprofile%\Pictures\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.jpg %userprofile%\Pictures\DaSistemare /MOVE
ROBOCOPY /S %userprofile%\download *.gif %userprofile%\Pictures\DaSistemare /MOVE
echo.
echo Immagini completata
echo.

echo.
echo Sto spostando la musica nella cartella %userprofile&\Music:
echo.
ROBOCOPY /S %userprofile%\download *.mp3 %userprofile%\Music\DASIST /MOVE
ROBOCOPY /S %userprofile%\download *.wma %userprofile%\Music\DASIST /MOVE
echo.
echo Musica completata
echo.

echo.
echo Sto spostando i video nella cartella %userprofile&\Videos:
echo.
ROBOCOPY /S %userprofile%\download *.avi %userprofile%\Videos\DASIST /MOVE
ROBOCOPY /S %userprofile%\download *.mkv %userprofile%\Videos\DASIST /MOVE
ROBOCOPY /S %userprofile%\download *.mp4 %userprofile%\Videos\DASIST /MOVE
echo.
echo Video completata
echo.

echo.

pause
exit
