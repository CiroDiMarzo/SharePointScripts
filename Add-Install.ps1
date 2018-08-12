$literalPath = "C:\Users\ciro\Documents\Solutions\030\AwesomeCalculator.wsp"

Write-Host "Adding solution $literalPath"

$sln = Add-SPSolution -LiteralPath $literalPath

Write-Host "Solution added, starting installation..."

Install-SPSolution -Identity AwesomeCalculator.wsp -GACDeployment -Force

while($sln.JobExists) {
    echo "> Installation in progress..."
    start-sleep -s 3
}

Write-Host "Done"