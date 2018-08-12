$site = "http://spfarmciro-sp:2013/sites/awesomecalc"

Write-Host "Deleting site at $site"

Remove-SPSite -Identity $site -confirm:$false

Write-Host "Site deleted."