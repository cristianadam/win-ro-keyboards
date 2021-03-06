;--------------------------------
; romanian_standard.nsi
; (c) 2012 Cristian Adam
;--------------------------------

Name "Română (Programatori)"

Icon "diacritice.ico"
XPStyle on
OutFile "romanian_standard_keyboard.exe"


InstallDir $TEMP\RomanianStandard

RequestExecutionLevel admin

Section "" 

  SetOutPath $INSTDIR
  
  CreateDirectory "$INSTDIR\amd64"
  CreateDirectory "$INSTDIR\i386"
  CreateDirectory "$INSTDIR\ia64"
  CreateDirectory "$INSTDIR\wow64"
  
  File /oname=amd64\rostd.dll amd64\rostd.dll 
  File /oname=i386\rostd.dll i386\rostd.dll 
  File /oname=ia64\rostd.dll ia64\rostd.dll 
  File /oname=wow64\rostd.dll wow64\rostd.dll 
  File setup.exe 
  File rostd_amd64.msi 
  File rostd_i386.msi 
  File rostd_ia64.msi 
  
  ExecWait '"$INSTDIR\setup.exe"'
  
  Delete amd64\rostd.dll 
  Delete i386\rostd.dll 
  Delete ia64\rostd.dll 
  Delete wow64\rostd.dll 
  Delete setup.exe 
  Delete rostd_amd64.msi 
  Delete rostd_i386.msi 
  Delete rostd_ia64.msi 
   
  RMDir "$INSTDIR\amd64"
  RMDir "$INSTDIR\i386"
  RMDir "$INSTDIR\ia64"
  RMDir "$INSTDIR\wow64"

SectionEnd

Function .onInstSuccess
  Exec '"$SYSDIR\RunDll32.exe" "$SYSDIR\shell32.dll",Control_RunDLL "$SYSDIR\input.dll"'
FunctionEnd