# How to use
# 1.txt - old host file, 2.txt - new host file, hosts - result 
# place 1.txt and 2.txt and this script in one folder, like New Folder on a Desktop 
# run ps1 script with Right click or Edit with Power Shell ISE and run from there

# forcing a session output file in UTF8 to reduce size and time to process. By defult PowerShell saves in UTF-16LE witch does not work with anything
$PSDefaultParameterValues = @{'Out-File:Encoding' = 'UTF8'};

# joining files and removing lines not starting with 0.0.0.0
(Get-Content 1.txt) + (Get-Content 2.txt) | Sort-Object | Get-Unique | Where-Object {$_ -match '^0\.0\.0\.0'} | Set-Content hosts


# You may wish manualy add first lanes from the origianl host file, such as 127.0.0.1	localhost
# upload to your system replacing hosts file
