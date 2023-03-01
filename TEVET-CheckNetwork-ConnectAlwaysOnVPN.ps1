Start-Sleep -Seconds 10
try
{
  # Check if computer is connected to domain network
  [void]::([System.DirectoryServices.ActiveDirectory.Domain]::GetComputerDomain())

  Write-Host 'Domain Network'
}
catch
{
    rasdial.exe "TEVET Always-On VPN"
}