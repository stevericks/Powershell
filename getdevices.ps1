$Mbx = Get-CASMailbox -Filter {HasActiveSyncDevicePartnership -Eq $true -And ServerName -eq "exch04"} 

ForEach ($MB in $Mbx) 

{ 

Get-MobileDeviceStatistics -Mailbox $MB.Identity | Select-Object Identity, Lastsyncattempttime, LastSuccessSync, Devicetype, DeviceOS, DeviceFriendlyname, Status, DeviceAccessState | Export-CSV “<path>\<outputfilename>.csv” -NoTypeInformation –Append 

}
