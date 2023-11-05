$domainjoined = (Get-WmiObject -Class Win32_ComputerSystem).partofdomain
if ($domainjoined -eq $true) {
Write-Host "VBO is a member of a domain" -ForegroundColor Red
}
else
{
Write-Host "VBO is not a member of the domain" -ForegroundColor Green
}
