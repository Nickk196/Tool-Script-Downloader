function Start-PersistentScript {
    param([string]$Url)
    $arg = "-NoExit -ExecutionPolicy Bypass -Command `"Invoke-Expression (Invoke-RestMethod '$Url')`""
    Start-Process powershell.exe -ArgumentList $arg
}

Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/Signed-Scheduled-Tasks"
Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/DoomsdayFinder.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/Enr1c0o/Powershell-Scripts/refs/heads/main/Alt-Detector.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/ShellSearch.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/CommonDirectories.ps1""
Start-PersistentScript "https://raw.githubusercontent.com/MeowTonynoh/MeowModAnalyzer/main/MeowModAnalyzer.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/PureIntent/ScreenShare/main/RedLotusBam.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/NoDiff-del/JARParser/refs/heads/main/JARParser.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/Nickk196/MacroDetector/refs/heads/main/MacroDetector.ps1"
Start-PersistentScript "https://raw.githubusercontent.com/cheesecatlol/DQRKIS-FUCKER/refs/heads/main/DqrkisFucker.ps1"

explorer.exe "$env:TEMP"
explorer.exe "shell:recent"
explorer.exe "shell:recyclebinfolder"

Write-Host "Meow!!!" -ForegroundColor Magenta
