$repos = Get-VBOObjectStorageRepository
foreach ($repo in $repos) {
if ($repo.EnableImmutability -eq $true) {
write-host "Repository with name"$repo.name "is immutable" -ForegroundColor Green
}
else
{
write-host "Repository with name"$repo.name "is not immutable" -ForegroundColor Yellow
}
}
