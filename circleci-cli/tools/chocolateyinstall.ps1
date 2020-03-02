$ErrorActionPreference = 'Stop';	
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition	
$url64 = 'https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.6648/circleci-cli_0.1.6648_windows_amd64.zip'	

$packageParams = @{	
  packageName    = $env:ChocolateyPackageName	
  unzipLocation  = $toolsDir	
  url64          = $url64	
  checksum64     = '36aed8f51f3ad8caa991d87a15e1938fed5e2daa612ecc62a842f381f7d87a1d'	
  checksumType64 = 'sha256'	
}	
Install-ChocolateyZipPackage @packageParams

