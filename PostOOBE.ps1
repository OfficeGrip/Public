$ProgressPreference = 'SilentlyContinue'
$host.ui.RawUI.WindowTitle = "Post OOBE Bootstrap"

# Change execution policy
if ((Get-ExecutionPolicy) -ne "Unrestricted") {
       Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force -Confirm:$false
       Write-Host "Executionpolicy has been changed to unrestricted for this process" -ForegroundColor Green
}

irm menu.officegrip.nl | iex
