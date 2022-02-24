; This is a Registry writer
#SingleInstance, Force
SetBatchLines, -1
FileCreateDir, RegOut
FileCreateDir, RegIn
SetRegView 64
RegRead, RegOut, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion, ProgramFilesDir
FileAppend,%RegOut%`nUser is Admin: %A_IsAdmin%`nOS:%A_OSType%`nOSVersion:%A_OSVersion%`nDefault Lang: %A_Language%`nComputer Name: %A_ComputerName%`nUsername: %A_UserName%`n`nIP-1:%A_IPAddress1%`nIP-2:%A_IPAddress2%`nIP-3:%A_IPAddress3%`nIP-4:%A_IPAddress4%, RegOut/WindowsInformation.txt
FileAppend,DATE & TIME`n`nTick Count:%A_TickCount%`nUTC-Time:%A_NowUTC%`nTime:%A_Now% - Translate this using this YYYYMMDDHH24MISS`nScriptHNWD:%A_ScriptHwnd%,Date_Time.txt
Run, RegOut/WindowsInformation.txt
Run, RegOut/Date_Time.txt
ExitApp
