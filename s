mkdir C:\Sophia

cd C:\Sophia


Invoke-WebRequest -Uri "https://github.com/farag2/Sophia-Script-for-Windows/releases/download/7.1.5/Sophia.Script.for.Windows.10.v6.1.5.zip" -OutFile "Sophia.zip"


Expand-Archive -Path ".\Sophia.zip" -DestinationPath ".\Extracted" -Force


cd ".\Extracted\Sophia_Script_for_Windows_10_v6.1.5"


Get-ChildItem -Recurse | Unblock-File


powershell -ExecutionPolicy Bypass -File .\Sophia.ps1
