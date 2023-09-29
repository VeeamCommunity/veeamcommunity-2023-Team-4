$TLS12Location = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server"
$TLS11Location = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server"
$TLS10Location = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"
$SSL30Location = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"
$SSL20Location = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"

#TestSSL20
$SSL20Path = Test-Path $SSL20Location
if ($SSL20Path -eq $true)
{
$SSL20Enabled = Get-ItemProperty -Path $SSL20Location -Name "Enabled"
if ($SSL20Enabled.Enabled -eq 0)
{
$SSL20Result = "SSL 2.0 is disabled"
$SSL20ResultColour = "Green"
}
else
{
$SSL20Result = "SSL 2.0 is enbaled"
$SSL20ResultColour = "Red"
}
}
else
{
$SSL20Result = "SSL 2.0 is enabled"
$SSL20ResultColour = "Red"
}

#TestSSL30
$SSL30Path = Test-Path $SSL30Location
if ($SSL30Path -eq $true)
{
$SSL30Enabled = Get-ItemProperty -Path $SSL30Location -Name "Enabled"
if ($SSL30Enabled.Enabled -eq 0)
{
$SSL30Result = "SSL 3.0 is disabled"
$SSL30ResultColour = "Green"
}
else
{
$SSL30Result = "SSL 3.0 is enbaled"
$SSL30ResultColour = "Red"
}
}
else
{
$SSL30Result = "SSL 3.0 is enabled"
$SSL30ResultColour = "Red"
}

#TestTLS10
$TLS10Path = Test-Path $TLS10Location
if ($TLS10Path -eq $true)
{
$TLS10Enabled = Get-ItemProperty -Path $TLS10Location -Name "Enabled"
if ($TLS10Enabled.Enabled -eq 0)
{
$TLS10Result = "TLS 1.0 is disabled"
$TLS10ResultColour = "Green"
}
else
{
$TLS10Result = "TLS 1.0 is enbaled"
$TLS10ResultColour = "Red"
}
}
else
{
$TLS10Result = "TLS 1.0 is enbaled"
$TLS10ResultColour = "Red"
}

#TestTLS11
$TLS11Path = Test-Path $TLS11Location
if ($TLS11Path -eq $true)
{
$TLS11Enabled = Get-ItemProperty -Path $TLS11Location -Name "Enabled"
if ($TLS11Enabled.Enabled -eq 0)
{
$TLS11Result = "TLS 1.1 is disabled"
$TLS11ResultColour = "Green"
}
else
{
$TLS11Result = "TLS 1.1 is enbaled"
$TLS11ResultColour = "Red"
}
}
else
{
$TLS11Result = "TLS 1.1 is enbaled"
$TLS11ResultColour = "Red"
}

#TestTLS12
$TLS12Path = Test-Path $TLS12Location
if ($TLS12Path -eq $true)
{
$TLS12Enabled = Get-ItemProperty -Path $TLS12Location -Name "Enabled"
if ($TLS12Enabled.Enabled -eq 0)
{
$TLS12Result = "TLS 1.2 is disabled"
$TLS12ResultColour = "Red"
}
else
{
$TLS12Result = "TLS 1.2 is enbaled"
$TLS12ResultColour = "Green"
}
}
else
{
$TLS12Result = "TLS 1.2 is enbaled"
$TLS12ResultColour = "Green"
}

Write-Host $SSL20Result -ForegroundColor $SSL20ResultColour
Write-Host $SSL30Result -ForegroundColor $SSL30ResultColour
Write-Host $TLS10Result -ForegroundColor $TLS10ResultColour
Write-Host $TLS11Result -ForegroundColor $TLS11ResultColour
Write-Host $TLS12Result -ForegroundColor $TLS12ResultColour
