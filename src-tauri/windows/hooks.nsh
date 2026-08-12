; Startup + apple-music:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Music" '"$INSTDIR\Apple Music.exe"'
  WriteRegStr HKCU "Software\Classes\apple-music" "" "URL:Apple Music"
  WriteRegStr HKCU "Software\Classes\apple-music" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-music\shell\open\command" "" '"$INSTDIR\Apple Music.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Music"
  DeleteRegKey HKCU "Software\Classes\apple-music"
!macroend
