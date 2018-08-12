$site = "http://spfarmciro-sp:2013/sites/awesomecalc"
$owner = "SPFarmCiro-SP\Ciro"

Write-Host "Creating site at $site"

New-SPSite -Url $site -OwnerAlias $owner -Template STS#0

Write-Host "Site created."