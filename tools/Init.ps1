param($installPath, $toolsPath, $package, $project)

$props = "Common.targets"
$template = "$toolsPath\$props"
$destination = "$installPath\..\.."

if(-Not(Test-Path "$destination\$props")) {
    Write-Host "Creating common solution targest."
    Copy-Item $template -Destination $destination
}