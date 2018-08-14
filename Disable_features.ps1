$site = "http://spfarmciro-sp:2013/sites/awesomecalc"

Write-Host "Disabling feature AwesomeCalculator.Fields"
Disable-SPFeature -Identity 811f7511-2a33-43f4-a2c6-bbbaa7bf9c66 -Url $site  -confirm:$false

Start-Sleep -s 3

Write-Host "Disabling feature AwesomeCalculator.ContentTypes"
Disable-SPFeature -Identity e7062e8b-79a2-428f-af56-5e53aaf875a7 -Url $site -confirm:$false

Start-Sleep -s 3

Write-Host "Disabling feature AwesomeCalculator.WebParts"
Disable-SPFeature -Identity bcc35913-627d-49c6-ab95-9e74591c573d -Url $site -confirm:$false

Start-Sleep -s 3

Write-Host "Disabling feature AwesomeCalculator.ListInstances"
Disable-SPFeature -Identity 34bd8858-97c0-4ba2-89c6-8f0adb9a85a6 -Url $site -confirm:$false