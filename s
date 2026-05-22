Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

cd $HOME\Downloads

pwd

Invoke-WebRequest -Uri "https://github.com/farag2/Sophia-Script-for-Windows/archive/refs/heads/master.zip" -OutFile "Sophia.zip"


Expand-Archive -Path ".\Sophia.zip" -DestinationPath ".\Sophia" -Force


cd .\Sophia\*


dir


Get-ChildItem -Recurse | Unblock-File

.\Sophia.ps1

--------------------------------------------------------------------------------------------------------------------------------




Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
cd $HOME\Downloads
Invoke-WebRequest -Uri "https://github.com/farag2/Sophia-Script-for-Windows/archive/refs/heads/master.zip" -OutFile "Sophia.zip"
Expand-Archive -Path ".\Sophia.zip" -DestinationPath ".\Sophia" -Force
cd .\Sophia\*
Get-ChildItem -Recurse | Unblock-File
powershell -ExecutionPolicy Bypass -File .\Sophia.ps1
