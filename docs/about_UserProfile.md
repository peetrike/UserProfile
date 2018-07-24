# UserProfile
## about_UserProfile

# SHORT DESCRIPTION
Describes module that helps to manage user profiles on local and remote computers.

# LONG DESCRIPTION
UserProfile is CDXML-based module that helps to manage user profiles.  It allows to find, reckognize,
delete profiles or change the profile owner.  All operations are based on Win32_UserProfile CIM object.

The profile management can be performed remotely on many computers, using CIM Sessions.

Possible commands are:

|Cmdlet            |Description                                 |
|------------------|--------------------------------------------|
|Get-UserProfile   |find user profiles                          |
|Get-ProfileOwner  |show user profile owner name instead of SID |
|Remove-UserProfile|deletes user profiles                       |
|Set-ProfileOwner  |changes the owner of user profile           |

# EXAMPLES

### Example 1

```powershell
PS C:\> Get-UserProfile -Special $false
```

Find all user profiles except special system profiles.

### Example 2

```powershell
PS C:\> $myDate = (Get-Date).AddDays(-90)
PS C:\> Get-UserProfile -Before $myDate -Roaming $true -Loaded $false |
            Remove-UserProfile
```

Find all roaming profiles that are not used for 3 months (90 days) and delete them.

### Example 3

```powershell
PS C:\> Get-AdUser John | Get-UserProfile
```

Find user profile of specific user.

### Example 4

```powershell
PS C:\> $session = new-cimsession -ComputerName srv1,srv2 -credential domain\user
PS C:\> Get-UserProfile -CimSession $session -Roaming $true
```

Find all roaming profiles from specific computers.

### Example 4

```powershell
PS C:\> Get-Item c:\users\someuser |
            Select-Object -ExpandProperty FullName |
            Get-UserProfile |
            Get-ProfileOwner
```

Discover user profile owner by folder name.

# SEE ALSO
[Win32_UserProfile class](http://msdn.microsoft.com/library/ee886409)

Get-CimInstance
