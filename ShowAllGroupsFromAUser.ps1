# This will grab all of the groups from a User AD Account.
# Change the DistinguishedName to the users login name then run script.
Get-ADPrincipalGroupMembership DistinguishedName | select Name