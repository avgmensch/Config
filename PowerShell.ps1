function Clear-ShellHisory {
    Clear-Content (Get-PSReadLineOption).HistorySavePath
    Clear-History
}

function Edit-PSProfile {
    code $HOME\Documents\PowerShell\Profile.ps1
}

function Set-LocationDev {
    Set-Location $Home\Programming
}

function Set-LocationHome {
    Set-Location $Home
}

Set-Alias -Name "d" -Value "Set-LocationDev"
Set-Alias -Name "h" -Value "Set-LocationHome"
Set-Alias -Name "e" -Value "explorer.exe"
Set-Alias -Name "c" -Value "code.cmd"

# .NET setup
$DOTNET_ROOT = "$Home\AppData\Local\Programs\.NET"
$env:PATH = $DOTNET_ROOT + ";" + $env:PATH
$env:DOTNET_CLI_TELEMETRY_OPTOUT = 1