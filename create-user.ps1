Import-Module ActiveDirectory

New-ADUser -Name "Test User" `
-GivenName "Test" `
-Surname "User" `
-SamAccountName "testuser" `
-UserPrincipalName "testuser@domain.com" `
-Path "OU=Users,DC=domain,DC=com" `
-AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
-Enabled $true
