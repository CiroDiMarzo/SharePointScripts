
$literalPath = "C:\Users\ciro\Documents\Solutions\061\AwesomeCalculator.wsp"

Write-Host "Updating the solution $literalPath"

Update-SPSolution -Identity AwesomeCalculator.wsp -LiteralPath $literalPath -GACDeployment