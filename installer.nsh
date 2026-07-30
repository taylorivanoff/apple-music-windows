!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Music" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\apple-music" "" "URL:Apple Music"
  WriteRegStr HKCU "Software\Classes\apple-music" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-music\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Music"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\apple-music"
!macroend
