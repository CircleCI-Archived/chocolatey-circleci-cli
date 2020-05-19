
$url = "https://github.com/CircleCI-Public/circleci-cli/releases/latest" 

$request = [System.Net.WebRequest]::Create($url)
$request.AllowAutoRedirect=$false
$response=$request.GetResponse()
$versionURL = $response.GetResponseHeader("Location")

$curVersion = ($versionURL | Split-Path -Leaf).Substring(1)

$tmpFile = "checksum.txt"
Invoke-WebRequest $("https://github.com/CircleCI-Public/circleci-cli/releases/download/v$curVersion/circleci-cli_$curVersion" + "_checksums.txt") -OutFile $tmpFile

$hash = (Get-Content $tmpFile | where {$_ -like "*windows_amd64.zip"}).split(" ")[0]

### replace hash
$installerPath = ".\circleci-cli\tools\chocolateyinstall.ps1"
(Get-Content $installerPath).Replace('$HASH',$hash) | Out-File $installerPath -Force