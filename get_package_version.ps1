param (
    [string]$packageName
)

$result = pixi list -e imodforge $packageName 2>$null | Select-String -Pattern "^$packageName\s+(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+).*"
$firstMatch = $result.Matches[0]

$major = $firstMatch.Groups["major"].Value
$minor = $firstMatch.Groups["minor"].Value
$patch = $firstMatch.Groups["patch"].Value

Write-Output "$major.$minor.$patch"
