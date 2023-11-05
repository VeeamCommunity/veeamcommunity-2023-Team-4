$repos = Get-VBORepository

foreach ($repo in $repos)
  {
      
      $color = "red"
      If (($repo).EnableObjectStorageEncryption -eq "true") {$color = "white"}
      write-host $repo.name $repo.EnableObjectStorageEncryption -ForegroundColor $color
  }
