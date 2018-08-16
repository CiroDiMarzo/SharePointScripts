. .\Variables.ps1

Write-Host "Deleting site at $site"

Remove-SPSite -Identity $site -confirm:$false

Write-Host "Site deleted."