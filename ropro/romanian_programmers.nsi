;--------------------------------
; romanian_programmers.nsi
; (c) 2012 Cristian Adam
;--------------------------------

Name "Română (Programatori)"

Icon "diacritice.ico"
XPStyle on
OutFile "romanian_programmers_keyboard.exe"


InstallDir $TEMP\RomanianProgrammers

RequestExecutionLevel admin

Section "" 

  SetOutPath $INSTDIR
  
  CreateDirectory "$INSTDIR\amd64"
  CreateDirectory "$INSTDIR\i386"
  CreateDirectory "$INSTDIR\ia64"
  CreateDirectory "$INSTDIR\wow64"
  
  File /oname=amd64\ropro.dll amd64\ropro.dll 
  File /oname=i386\ropro.dll i386\ropro.dll 
  File /oname=ia64\ropro.dll ia64\ropro.dll 
  File /oname=wow64\ropro.dll wow64\ropro.dll 
  File setup.exe 
  File ropro_amd64.msi 
  File ropro_i386.msi 
  File ropro_ia64.msi 
  
  ExecWait '"$INSTDIR\setup.exe"'
  
  Delete amd64\ropro.dll 
  Delete i386\ropro.dll 
  Delete ia64\ropro.dll 
  Delete wow64\ropro.dll 
  Delete setup.exe 
  Delete ropro_amd64.msi 
  Delete ropro_i386.msi 
  Delete ropro_ia64.msi 
   
  RMDir "$INSTDIR\amd64"
  RMDir "$INSTDIR\i386"
  RMDir "$INSTDIR\ia64"
  RMDir "$INSTDIR\wow64"

SectionEnd

Function .onInstSuccess
  Exec '"$SYSDIR\RunDll32.exe" "$SYSDIR\shell32.dll",Control_RunDLL "$SYSDIR\input.dll"'
FunctionEnd