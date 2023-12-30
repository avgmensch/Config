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
$env:DOTNET_ROOT = "$Home\AppData\Local\Programs\.NET"
$env:PATH = $env:DOTNET_ROOT + ";" + $env:PATH
$env:DOTNET_CLI_TELEMETRY_OPTOUT = 1
## dotnet dev-certs https --clean
## https://learn.microsoft.com/en-us/aspnet/core/security/enforcing-ssl
$env:DOTNET_GENERATE_ASPNET_CERTIFICATE = false

function Unset-DOTNET_ROOT {
    $env:DOTNET_ROOT = ""
}

function Reset-DOTNET_ROOT {
    $env:DOTNET_ROOT = "$Home\AppData\Local\Programs\.NET"
}
