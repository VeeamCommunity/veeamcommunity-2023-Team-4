$vbolicense = Get-VBOLicense
if ($vbolicense.usednumber -gt $vbolicense.TotalNumber) {
write-host "VBO license exceeds limit" -ForegroundColor Red
}
else
{
write-host "VBO Licensed : OK" -ForegroundColor Green
}
