#Check if User AD Account is Enabled.
#Can be a bases of more complex script for AD related tasks.

# Import the Active Directory module
Import-Module ActiveDirectory

$User = Read-Host -Prompt 'Input the user name'; Get-ADUser -Filter {name -like $User -or samaccountname -like $User} | select SamAccountName, Enabled
