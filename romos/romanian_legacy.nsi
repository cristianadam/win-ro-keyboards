;--------------------------------
; romanian_legacy.nsi
; (c) 2012 Cristian Adam
;--------------------------------

Name "Română (Moștenit)"

Icon "diacritice.ico"
XPStyle on
OutFile "romanian_legacy_keyboard.exe"


InstallDir $TEMP\RomanianLegacy

RequestExecutionLevel admin

Section "" 

  SetOutPath $INSTDIR
  
  CreateDirectory "$INSTDIR\amd64"
  CreateDirectory "$INSTDIR\i386"
  CreateDirectory "$INSTDIR\ia64"
  CreateDirectory "$INSTDIR\wow64"
  
  File /oname=amd64\romos.dll amd64\romos.dll 
  File /oname=i386\romos.dll i386\romos.dll 
  File /oname=ia64\romos.dll ia64\romos.dll 
  File /oname=wow64\romos.dll wow64\romos.dll 
  File setup.exe 
  File romos_amd64.msi 
  File romos_i386.msi 
  File romos_ia64.msi 
  
  ExecWait '"$INSTDIR\setup.exe"'
  
  Delete amd64\romos.dll 
  Delete i386\romos.dll 
  Delete ia64\romos.dll 
  Delete wow64\romos.dll 
  Delete setup.exe 
  Delete romos_amd64.msi 
  Delete romos_i386.msi 
  Delete romos_ia64.msi 
   
  RMDir "$INSTDIR\amd64"
  RMDir "$INSTDIR\i386"
  RMDir "$INSTDIR\ia64"
  RMDir "$INSTDIR\wow64"

SectionEnd

Function .onInstSuccess
  Exec '"$SYSDIR\RunDll32.exe" "$SYSDIR\shell32.dll",Control_RunDLL "$SYSDIR\input.dll"'
FunctionEnd