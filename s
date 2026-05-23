Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

cd $HOME\Downloads

Invoke-WebRequest -Uri "https://github.com/farag2/Sophia-Script-for-Windows/archive/refs/heads/master.zip" -OutFile "Sophia.zip"


Expand-Archive -Path ".\Sophia.zip" -DestinationPath ".\Sophia" -Force


cd ".\Sophia\Sophia-Script-for-Windows-main"


Get-ChildItem -Recurse | Unblock-File


cd .\Scripts


dir


powershell -ExecutionPolicy Bypass -File .\Sophia.ps1

ou

powershell -ExecutionPolicy Bypass -File .\Sophia_Script.ps1





_____________________________________________________________________________________________________________________________
$script = Get-ChildItem -Recurse -Filter "*.ps1" | Where-Object { $_.Name -match "Sophia" } | Select-Object -First 1

powershell -ExecutionPolicy Bypass -File $script.FullName
