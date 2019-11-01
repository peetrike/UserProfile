# Module manifest for module 'UserProfile'
# Generated on: 18.06.2015

@{
    RootModule = 'UserProfile.psm1'
    ModuleVersion = '1.0'
    Description = 'This module manages user profiles on local and remote computers'

    GUID = '76d4c0a7-9d35-4eb9-a756-28e5d22fb5ab'

    Author = 'Peter Wawa'
    CompanyName = '!ZUM!'
    Copyright = '(c) 2015 Peter Wawa. All rights reserved.'


    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = "5.1"

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
        'CimCmdlets'
    )

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(
        'UserProfile.Types.ps1xml'
    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'UserProfile.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @(
        'Win32_UserProfile.cdxml'
        'ProfileOwner.cdxml'
    )

    # Functions to export from this module
    FunctionsToExport = @(
        'Get-ProfileOwner'
        'Get-UserProfile'
        'Remove-UserProfile'
        'Set-ProfileOwner'
    )

    # Cmdlets to export from this module
    CmdletsToExport = @()

    # Variables to export from this module
    VariablesToExport = @()

    # Aliases to export from this module
    AliasesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess
    PrivateData = @{
        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @(
                'UserProfile',
                'Profile'
            )

            ExternalModuleDependencies = @(
                'CimCmdlets'
            )

            LicenseUri = 'https://opensource.org/licenses/MIT'
            ProjectUri = 'https://github.com/peetrike/UserProfile'

            # A URL to an icon representing this module.
            # IconUri = ''

            ReleaseNotes = 'https://github.com/peetrike/UserProfile/blob/master/CHANGELOG.md'
        } # End of PSData hashtable
    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}
