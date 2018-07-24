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
