Get-ADGroupMember "group1" | ForEach-Object {
  Add-ADGroupMember -Identity "group2" -Members $_
  Remove-ADGroupMember -Identity "group1" -Members $_
}
