$ErrorActionPreference = 'Stop';	
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition	
$url64 = 'https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.7251/circleci-cli_0.1.7251_windows_amd64.zip'	

$packageParams = @{	
  packageName    = $env:ChocolateyPackageName	
  unzipLocation  = $toolsDir	
  url64          = $url64	
  checksum64     = 'b801993e5b0f6f0ae640a177d28a78a43af18a138dd3ee3ab1de918551ed265b'	
  checksumType64 = 'sha256'	
}	
Install-ChocolateyZipPackage @packageParams

