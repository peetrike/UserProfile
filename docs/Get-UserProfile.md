---
external help file: Win32_UserProfile.cdxml-help.xml
Module Name: userprofile
online version: http://msdn.microsoft.com/library/ee886409
schema: 2.0.0
---

# Get-UserProfile

## SYNOPSIS
Gets user profile objects from local or remote systems.

## SYNTAX

### ByPath (Default)
```
Get-UserProfile [-LocalPath <String[]>] [-Before <DateTime>] [-Status <Status[]>] [-Loaded <Boolean[]>]
 [-Roaming <Boolean[]>] [-Special <Boolean[]>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [<CommonParameters>]
```

### BySID
```
Get-UserProfile -SID <String[]> [-Before <DateTime>] [-Status <Status[]>] [-Loaded <Boolean[]>]
 [-Roaming <Boolean[]>] [-Special <Boolean[]>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-UserProfile cmdlet retrieves the specified user profile and its properties.
If you do not specify a profile name, the cmdlet returns a list of all user profiles.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-UserProfile
```

This example receives all user profiles from local computer

### Example 2

```powershell
PS C:\> $loadedBefore = (Get-Date).AddDays(-90)
PS C:\> Get-Userprofile -Before $loadedBefore
```

This example retreives all user profiles that are not used for 3 months (90 days)

### Example 3

```powershell
PS C:\> Get-AdUser Joe | Get-UserProfile
```

This example retrieves the AD user Joe's profile.

### Example 4

```powershell
PS C:\> Get-CimInstance Win32_UserAccount "name='localuser'" | Get-UserProfile
```

This example retrieves local user's profile.

## PARAMETERS

### -LocalPath
Specifies a path to one or more user profiles.
Wildcards are permitted.

```yaml
Type: String[]
Parameter Sets: ByPath
Aliases: Path

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: True
```

### -SID
Specifies profile owner Security ID (SID).
Wildcards are permitted.

```yaml
Type: String[]
Parameter Sets: BySID
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: True
```

### -Status
Specifies the status of the user profiles being enumerated.

```yaml
Type: Status[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Loaded
Specifies whether the returned user profiles should include currently loaded ones (or not)

```yaml
Type: Boolean[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Roaming
Specifies whether the returned user profiles should include roaming profiles (or not)

```yaml
Type: Boolean[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Special
Specifies whether the returned user profiles should include these that are owned by a special system service.

```yaml
Type: Boolean[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CimSession
Runs the cmdlet in a remote session or on a remote computer.
Enter a computer name or a session object, such as the output of a New-CimSession or Get-CimSession cmdlet.
The default is the current session on the local computer.

```yaml
Type: CimSession[]
Parameter Sets: (All)
Aliases: Session

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrottleLimit
Specifies the maximum number of concurrent operations that can be established to run the cmdlet.
If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer.
The throttle limit applies only to the current cmdlet, not to the session or to the computer.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsJob
Specifies the maximum number of concurrent operations that can be established to run the cmdlet.
If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer.
The throttle limit applies only to the current cmdlet, not to the session or to the computer.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Before
Gets only the user profiles that has been loaded before the specified date and time.
Enter a DateTime object, such as the one returned by the Get-Date cmdlet.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile
User Profile CIM object

## NOTES
The Microsoft.Management.Infrastructure.CimInstance object is a wrapper class that displays Windows Management Instrumentation (WMI) objects.
The path after the pound sign (#) provides the namespace and class name for the underlying WMI object.

## RELATED LINKS

[Win32_UserProfile](https://docs.microsoft.com/en-us/previous-versions/windows/desktop/userprofileprov/win32-userprofile)

[Remove-UserProfile](Remove-UserProfile.md)

[Get-ProfileOwner](Get-ProfileOwner.md)

[Set-ProfileOwner](Set-ProfileOwner.md)
