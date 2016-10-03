@echo off
title Download Reorder ~ Filippo Vicari ~ info@filippovicari.com

echo. --------------------------------------
echo Programma: Download-Reorder
echo. --------------------------------------
echo Descrizione: Riordina la tua cartella Download
echo. --------------------------------------
echo Autore: Filippo Vicari
echo. --------------------------------------
echo Bug report info@filippovicari.com
echo. --------------------------------------

pause
cls

rem elimina tutti i file per MAC
echo.
echo Elimino i file usati per Mac
echo.
del /s  ._*
rd /s /q __MACOSX


echo.
echo Sto spostando i documenti nella cartella %userprofile&\download:
echo.

ROBOCOPY /S %userprofile%\download *.pdf %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.doc %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.docx %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.otd %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.odp %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.ods %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.odg %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.txt %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

REM Decommenta i comandi sottostanti inserendo l'estensione del tipo di file da spostare in Documents\DaSistemare
REM ROBOCOPY /S %userprofile%\download *.[CHANGEME] %userprofile%\Documents\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

echo.
echo Spostamento Documenti completato
echo.
echo Sto spostando le immagini nella cartella %userprofile&\Pictures:
echo.

ROBOCOPY /S %userprofile%\download *.png %userprofile%\Pictures\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.jpg %userprofile%\Pictures\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.gif %userprofile%\Pictures\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

REM Decommenta i comandi sottostanti inserendo l'estensione del tipo di file da spostare in Pictures\DaSistemare
REM ROBOCOPY /S %userprofile%\download *.[CHANGEME] %userprofile%\Pictures\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

echo.
echo Spostamento Immagini completato
echo.

echo.
echo Sto spostando la musica nella cartella %userprofile&\Music:
echo.

ROBOCOPY /S %userprofile%\download *.mp3 %userprofile%\Music\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.wma %userprofile%\Music\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

REM Decommenta i comandi sottostanti inserendo l'estensione del tipo di file da spostare in Music\DaSistemare
REM ROBOCOPY /S %userprofile%\download *.[CHANGEME] %userprofile%\Pictures\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

echo.
echo Spostamento Musica completato
echo.

echo.
echo Sto spostando i video nella cartella %userprofile&\Videos:
echo.

ROBOCOPY /S %userprofile%\download *.avi %userprofile%\Videos\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.mkv %userprofile%\Videos\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"
ROBOCOPY /S %userprofile%\download *.mp4 %userprofile%\Videos\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

REM Decommenta i comandi sottostanti inserendo l'estensione del tipo di file da spostare in Videos\DaSistemare
REM ROBOCOPY /S %userprofile%\download *.[CHANGEME] %userprofile%\Videos\DaSistemare /MOVE /LOG+:"%userprofile%\download\Copy_Log.txt"

echo.
echo Spostamento Video completato
echo.

cls
echo.
echo Spostamento dei file completato
echo.

echo.
echo Puoi trovare il file log con tutti i dettagli sullo spostamentoi qui: %userprofile%\download\Copy_Log.txt
echo.

pause
exit
