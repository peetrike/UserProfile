---
external help file: ProfileOwner.cdxml-help.xml
Module Name: userprofile
online version:
schema: 2.0.0
---

# Get-ProfileOwner

## SYNOPSIS
Resolves user profile owner SID to user object.

## SYNTAX

```
Get-ProfileOwner [-SID] <String[]> [-CimSession <CimSession[]>] [-ThrottleLimit <Int32>] [-AsJob]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-ProfileOwner cmdlet resolves one or more user profile owners to user account objects.

## EXAMPLES

### Example 1

```powershell
PS C:\> Get-UserProfile | Get-ProfileOwner
```
```output
Caption                 Domain  Name             SID
-------                 ------  ----             ---
PWNOTE\NETWORK SERVICE  PWNOTE  NETWORK SERVICE  S-1-5-20
PWNOTE\SYSTEM           PWNOTE  SYSTEM           S-1-5-18
PWNOTE\LOCAL SERVICE    PWNOTE  LOCAL SERVICE    S-1-5-19
    . . .
```

Resolves user profile owners into user accounts


### Example 2
```powershell
PS C:\> Get-ProfileOwner -SID S-1-5-20
```

This example gets user account details using specific SID

### Example 3

```powershell
PS C:\> Get-Item c:\users\someuser |
          Select-Object -ExpandProperty FullName |
          Get-UserProfile |
          Get-ProfileOwner
```

This example takes user profile directory by name and retrieves that profile's owner details.

## PARAMETERS

### -SID
Specifies profile owner Security ID (SID).

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
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
Runs the cmdlet as a background job.
Use this parameter to run commands that take a long time to complete.
The cmdlet immediately returns an object that represents the job and then displays the command prompt.
You can continue to work in the session while the job completes.
To manage the job, use the *-Job cmdlets.
To get the job results, use the Receive-Job cmdlet.
For more information about Windows PowerShell® background jobs, see about_Jobs.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile
User Profile CIM object

## OUTPUTS

### Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserAccount
User Account CIM object

### Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_SystemAccount
System Account CIM object

## NOTES
The Microsoft.Management.Infrastructure.CimInstance object is a wrapper class that displays Windows Management Instrumentation (WMI) objects.
The path after the pound sign (#) provides the namespace and class name for the underlying WMI object.

## RELATED LINKS

[Get-UserProfile](Get-UserProfile.md)

