@echo off
set file=ecdsa_test
g:\masm32\bin\rc dialog.rc
g:\masm32\bin\cvtres /machine:ix86 dialog.res
g:\masm32\bin\ml /coff /c /Cp /Gz %file%.asm
g:\masm32\bin\Link /SUBSYSTEM:WINDOWS %file%.obj dialog.obj ..\..\..\src\lib\ecdsa128.lib ..\..\..\src\lib\ecp.lib ..\..\..\src\lib\gfp.lib ..\..\..\src\lib\base64.lib ..\..\..\src\lib\random.lib ..\..\..\src\lib\sha1.lib ..\..\..\src\lib\rc4.lib ..\..\..\src\lib\utils.lib
del *.obj
pause