#Requires -RunAsAdministrator

function Start-PersistentScript {
    param (
        [string]$Url
    )

    $command = "powershell -NoExit -ExecutionPolicy Bypass -Command `"try { iex (irm '$Url') } catch { Write-Host `$_ -ForegroundColor Red }; Write-Host ''; Write-Host 'Keeping window open.' -ForegroundColor Cyan; while (`$true) { Start-Sleep 3600 }`""

    Start-Process cmd.exe -Verb RunAs -ArgumentList "/k $command"
}

# 
# Launch scripts
#


Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/Signed-Scheduled-Tasks"

Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/DoomsdayFinder.ps1"

Start-PersistentScript "https://raw.githubusercontent.com/Enr1c0o/Powershell-Scripts/refs/heads/main/Alt-Detector.ps1"

Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/ShellSearch.ps1"

Start-PersistentScript "https://raw.githubusercontent.com/praiselily/lilith-ps/refs/heads/main/CommonDirectories.ps1"

Start-PersistentScript "https://raw.githubusercontent.com/Ferman9/DIFR-tools/main/dillfindernew.ps1"

Start-PersistentScript "https://raw.githubusercontent.com/MeowTonynoh/MeowModAnalyzer/main/MeowModAnalyzer.ps1" 

Start-PersistentScript "https://raw.githubusercontent.com/PureIntent/ScreenShare/main/RedLotusBam.ps1"
 
Start-PersistentScript "https://raw.githubusercontent.com/NoDiff-del/JARParser/refs/heads/main/JARParser.ps1"



# 
# Open folders
# 

Start-Process explorer.exe $env:TEMP
Start-Process explorer.exe "shell:recent"
Start-Process explorer.exe "shell:recyclebinfolder"


Write-Host "Meow!!!." -ForegroundColor Magenta
