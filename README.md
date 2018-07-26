# UserProfile

This module that helps to manage user profiles on local and remote computers.

UserProfile is CDXML-based module that helps to manage user profiles.  It allows to find, reckognize,
delete profiles or change the profile owner.  All operations are based on Win32_UserProfile CIM object.

The profile management can be performed remotely on many computers, using CIM Sessions.

Possible commands are:

|Cmdlet            |Description                                 |
|------------------|--------------------------------------------|
|[Get-UserProfile](docs/Get-UserProfile.md)   |find user profiles                          |
|[Get-ProfileOwner](docs/Get-ProfileOwner.md)  |show user profile owner name instead of SID |
|[Remove-UserProfile](docs/Remove-UserProfile.md)|deletes user profiles                       |
|[Set-ProfileOwner](docs/Set-ProfileOwner.md)  |changes the owner of user profile           |

## Installation

Get this module from [PowerShell Gallery](https://www.powershellgallery.com)

1. Ensure that you have PowershellGet module.  If you have PowerShell 5 or newer, you already have that module.  For Powershell 3 and 4, you can follow the instructions to install it using [PackageManagement MSI](https://docs.microsoft.com/en-us/powershell/gallery/installing-psget).
2. Now get the module:

```powershell
Install-Module UserProfile
```

3. If you want to inspect module instead of installing it:

```powershell
Save-Module UserProfile
```
