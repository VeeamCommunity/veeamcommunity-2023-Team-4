$emailSettings = Get-VBOEmailSettings
if ($emailSettings.EnableNotification -eq $True) {
	write-host ("Email Notifications is configured.  Please ensure specific settings are configured and tested") -ForegroundColour white
	} else {
	write-host "Email Notifications is not configured" -ForegroundColour red
}
	