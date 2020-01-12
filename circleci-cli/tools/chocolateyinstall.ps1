$ErrorActionPreference = 'Stop';	
$toolsDir   = Split-Path -parent $MyInvocation.MyCommand.Definition	
$url64      = 'https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.5879/circleci-cli_0.1.5879_windows_amd64.zip'	

 $packageParams = @{	
  packageName     = $env:ChocolateyPackageName	
  unzipLocation   = $toolsDir	
  url64           = $url64	
  checksum64    = 'ca7fef41ca01cad6efef5adef0283bc314872ce82ab815c562c610d16e239af0'	
  checksumType64  = 'sha256'	
}	
Install-ChocolateyZipPackage @packageParams

