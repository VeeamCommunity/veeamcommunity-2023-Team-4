$orgs = Get-VBOOrganization

foreach ($org in $orgs)
{

      $color = "red"
      IF ((Get-VBOOrganization -Id $org.id).Office365ExchangeConnectionSettings.AuthenticationType -eq "ApplicationOnly") {$color = "white"}
      write-host $org.name $org.Office365ExchangeConnectionSettings.AuthenticationType -ForegroundColor $color
      
 }
