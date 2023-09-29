$VBORPS = Get-VBORestorePortalSettings
if ($VBORPS.IsServiceEnabled -eq $true) {
Write-Host "Self-Service Portal is enabled" -ForegroundColor Green
}
else
{
Write-Host "Self-Service Portal is disabled" -ForegroundColor Yellow
}
