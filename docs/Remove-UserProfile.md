---
external help file: Win32_UserProfile.cdxml-help.xml
Module Name: userprofile
online version:
schema: 2.0.0
---

# Remove-UserProfile

## SYNOPSIS
Deletes specified user profiles.

## SYNTAX

### ByPath (Default)
```
Remove-UserProfile -LocalPath <String[]> [-Before <DateTime>] [-Status <Status[]>] [-Loaded <Boolean[]>]
 [-Roaming <Boolean[]>] [-Special <Boolean[]>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BySID
```
Remove-UserProfile -SID <String[]> [-Before <DateTime>] [-Status <Status[]>] [-Loaded <Boolean[]>]
 [-Roaming <Boolean[]>] [-Special <Boolean[]>] [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### InputObject (cdxml)
```
Remove-UserProfile -InputObject <CimInstance[]> [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [-PassThru] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The Remove-UserProfile cmdlet removes specified user profiles from the system.

## EXAMPLES

### Example 1

```powershell
PS C:\> $account = Get-ADUser joe
PS C:\> Remove-UserProfile -SID $account.SID
```

This example removes profile for user account Joe

### Example 2

```powershell
PS C:\> Remove-UserProfile -Status Corrupt
```

This example removes all user profiles which are corrupt and cannot be loaded.

### Example 3
@{paragraph=PS C:\\\>}

```powershell
Get-UserProfile -Before (Get-Date).AddDays(-90) | Remove-UserProfile
```

This example finds all user profiles that are not used for 3 moths (90 days) and removes them.

### Example 4
@{paragraph=PS C:\\\>}

```powershell
Get-UserProfile -Roaming $true -Loaded $false | Remove-UserProfile
```

This example removes all local copies of roaming user profiles that are not currently loaded.

## PARAMETERS

### -LocalPath
Specifies a path to one or more user profiles.
Wildcards are permitted.

```yaml
Type: String[]
Parameter Sets: ByPath
Aliases: Path

Required: True
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
Parameter Sets: ByPath, BySID
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
Parameter Sets: ByPath, BySID
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
Parameter Sets: ByPath, BySID
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
Parameter Sets: ByPath, BySID
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

### -PassThru
Specifies that the cmdlet should output an object representing a user profile.
By default, this cmdlet does not generate any output.

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

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Specifies the user profile to remove.
Enter a User Profile CIM object, which you can get by using the Get-UserProfile cmdlet.

```yaml
Type: CimInstance[]
Parameter Sets: InputObject (cdxml)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Before
Gets only the user profiles that has been loaded before the specified date and time.
Enter a DateTime object, such as the one returned by the Get-Date cmdlet.

```yaml
Type: DateTime
Parameter Sets: ByPath, BySID
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

### Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile

User Profile CIM object

## OUTPUTS

None

## RELATED LINKS

[Get-UserProfile](Get-UserProfile.md)
