$groupName = "GroupName"
$outputFile = "C:\Temp\outputfile.csv"

# Import the Active Directory module
Import-Module ActiveDirectory

# Retrieve the security group members
$groupMembers = Get-ADGroupMember -Identity $groupName | Where-Object {$_.objectClass -eq 'user'}

# Create an array to store the results
$results = @()

# Iterate through the group members and add them to the results array
foreach ($member in $groupMembers) {
    $user = Get-ADUser -Identity $member.SamAccountName -Properties DisplayName, SamAccountName
    $result = [PSCustomObject]@{
        DisplayName    = $user.DisplayName
        StafflinkID = $user.SamAccountName
    }
    $results += $result
}

# Export the results to a CSV file
$results | Export-Csv -Path $outputFile -NoTypeInformation
