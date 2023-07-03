# Set the username you want to check

$targetUser = "username"

 

# Connect to Active Directory

Import-Module ActiveDirectory

 

# Check if the user exists

$userExists = Get-ADUser -Filter { SamAccountName -eq $targetUser }

 

if ($userExists) {

    # Check if the user is enabled (active)

    $userEnabled = $userExists.Enabled

 

    if ($userEnabled) {

        Write-Host "User '$targetUser' is active."

    } else {

        Write-Host "User '$targetUser' is disabled."

    }

} else {

    Write-Host "User '$targetUser' does not exist."

}
