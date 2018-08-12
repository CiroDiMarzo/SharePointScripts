$site = "http://spfarmciro-sp:2013/sites/awesomecalc"

Write-Host "Enabling AwesomeCalculator.Fields"
Enable-SPFeature -Identity 811f7511-2a33-43f4-a2c6-bbbaa7bf9c66 -Url $site

Start-Sleep -s 5

Write-Host "Enabling AwesomeCalculator.ContentTypes"
Enable-SPFeature -Identity e7062e8b-79a2-428f-af56-5e53aaf875a7 -Url $site

#Start-Sleep -s 5

#Write-Host "Enabling AwesomeCalculator.ListInstances"
#Enable-SPFeature -Identity 34bd8858-97c0-4ba2-89c6-8f0adb9a85a6 -Url $site