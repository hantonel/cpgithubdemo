Expand-Archive -Path "C:\Users\Public\Downloads\language.zip" C:\Users\Public\Downloads\language

$DefaultHKEY = "HKU\DEFAULT_USER"
$DefaultRegPath = "C:\Users\Default\NTUSER.DAT"

Set-TimeZone -Name "GMT Standard Time"
Set-Culture en-GB
Set-WinSystemLocale en-GB
Set-WinHomeLocation -GeoId 242
Set-WinUserLanguageList en-GB -Force
Set-WinUILanguageOverride -Language en-GB

reg load $DefaultHKEY $DefaultRegPath
reg import "C:\Users\Public\Downloads\language\en-gb-default.reg"
reg unload $DefaultHKEY
reg import "C:\Users\Public\Downloads\language\en-gb-welcome.reg"

reg load "HKU\TEMP" "C:\Users\Default\NTUSER.DAT"
REG IMPORT "C:\Users\Public\Downloads\language\default.REG"
REG UNLOAD "HKU\TEMP"

REG IMPORT "C:\Users\Public\Downloads\language\s-1-5-19.REG"

REG IMPORT "C:\Users\Public\Downloads\language\s-1-5-20.REG"

REG IMPORT "C:\Users\Public\Downloads\language\.default.REG"

whoami.exe > c:\log.txt

Start-Sleep -Seconds 180
