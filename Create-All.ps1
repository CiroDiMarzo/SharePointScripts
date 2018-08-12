$webApp = "http://spfarmciro-sp:2013/"
$site = "http://spfarmciro-sp:2013/sites/awesomecalc"
$literalPath = "C:\Users\ciro\Documents\Solutions\040\AwesomeCalculator.wsp"
$owner = "SPFarmCiro-SP\Ciro"

Write-Host "Creating site at $site"

New-SPSite -Url $site -OwnerAlias $owner -Template STS#0

Write-Host "Site created."

Write-Host "Adding solution $literalPath"

$sln = Add-SPSolution -LiteralPath $literalPath

Write-Host "Solution added, starting installation..."

Install-SPSolution -Identity AwesomeCalculator.wsp -WebApplication $webApp -GACDeployment

while($sln.JobExists) {
    echo "> Installation in progress..."
    start-sleep -s 3
}

Write-Host "Done"

Write-Host "Enabling AwesomeCalculator.Fields"
Enable-SPFeature -Identity 811f7511-2a33-43f4-a2c6-bbbaa7bf9c66 -Url $site

Start-Sleep -s 5

Write-Host "Enabling AwesomeCalculator.ContentTypes"
Enable-SPFeature -Identity e7062e8b-79a2-428f-af56-5e53aaf875a7 -Url $site

Start-Sleep -s 3

Write-Host "Enabling AwesomeCalculator.WebParts"
Enable-SPFeature -Identity bcc35913-627d-49c6-ab95-9e74591c573d -Url $site

#Start-Sleep -s 5

#Write-Host "Enabling AwesomeCalculator.ListInstances"
#Enable-SPFeature -Identity 34bd8858-97c0-4ba2-89c6-8f0adb9a85a6 -Url $site