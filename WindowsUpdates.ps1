$session=New-PSSession -ComputerName <yourcomputername>  -Credential "credential of admin account"
Invoke-Command -Session $session  -ScriptBlock {
[Net.servicepointmanager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12
Install-module pswindowsupdate -force -AllowClobber
Get-WindowsUpdate | Format-Table
} 
Get-PSSession | Remove-PSSession 