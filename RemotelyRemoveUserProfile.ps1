# You can use this script to remotely remove the user's profile.

# The user will need to be connected to A Network and the user will need to be logged off.

# Once the user has been removed it is recommended to restart their computer, it will then to recreate their profile.

# IMPORTANT! Anything they have on their Desktop etc., will be Deleted.
#
# Change the following:
# $computer variable and
# $user variable to match your AD Enviroment.

#WARNING - THIS WILL DELETE PROFILE & FILES BE CAREFUL.
$computer = 'ComputerName'
$user = 'User'
if($userprofile = Get-WmiObject Win32_UserProfile -ComputerName $computer -Filter "LocalPath LIKE '%$user%'"){
    $userprofile.Delete()
}else{
    Write-Host 'Profile not found'
}
