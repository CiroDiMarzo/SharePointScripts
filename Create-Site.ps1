. .\Variables.ps1

Write-Host "Creating site at $site"

New-SPSite -Url $site -OwnerAlias $owner -Template STS#0

Write-Host "Site created."