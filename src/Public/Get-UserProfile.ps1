function Get-UserProfile {
    # .EXTERNALHELP Win32_UserProfile.cdxml-Help.xml
    [CmdletBinding(
        DefaultParameterSetName = 'ByPath',
        PositionalBinding = $false
    )]

    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile')]

    param(
            [Parameter(
                ParameterSetName = 'BySID',
                Mandatory = $true,
                ValueFromPipelineByPropertyName = $true
            )]
            [ValidateNotNull()]
            [System.Security.Principal.SecurityIdentifier]
        $SID,

            [Parameter(
                ParameterSetName = 'ByPath',
                ValueFromPipeline = $true
            )]
            [Alias('Path', 'FullName')]
            [ValidateNotNull()]
            [string[]]
        $LocalPath,

            [datetime]
        $Before,

            [ValidateNotNull()]
            [Microsoft.PowerShell.Cmdletization.GeneratedTypes.UserProfile.Status[]]
        $Status,

            [ValidateNotNull()]
            [bool]
        $Loaded,

            [ValidateNotNull()]
            [bool]
        $Roaming,

            [ValidateNotNull()]
            [bool]
        $Special,

            [Alias('Session')]
            [ValidateNotNullOrEmpty()]
            [CimSession]
        $CimSession,

            [int]
        $ThrottleLimit,

            [switch]
        $AsJob
    )

    DynamicParam {
        try {
            if (-not $__cmdletization_exceptionHasBeenThrown) {
                $__cmdletization_objectModelWrapper = $script:ObjectModelWrapper::new()
                $__cmdletization_objectModelWrapper.Initialize($PSCmdlet, $script:ClassName, $script:ClassVersion, $script:ModuleVersion, $script:PrivateData)

                if ($__cmdletization_objectModelWrapper -is [System.Management.Automation.IDynamicParameters]) {
                    ([System.Management.Automation.IDynamicParameters]$__cmdletization_objectModelWrapper).GetDynamicParameters()
                }
            }
        } catch {
            $__cmdletization_exceptionHasBeenThrown = $true
            throw
        }
    }

    Begin {
        $__cmdletization_exceptionHasBeenThrown = $false
        try {
            __cmdletization_BindCommonParameters $__cmdletization_objectModelWrapper $PSBoundParameters
            $__cmdletization_objectModelWrapper.BeginProcessing()
        } catch {
            $__cmdletization_exceptionHasBeenThrown = $true
            throw
        }
    }


    Process {
        try {
            if (-not $__cmdletization_exceptionHasBeenThrown) {
                $__cmdletization_queryBuilder = $__cmdletization_objectModelWrapper.GetQueryBuilder()
                if ($PSBoundParameters.ContainsKey('SID') -and (@('BySID') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${SID})
                    $__cmdletization_queryBuilder.FilterByProperty('SID', $__cmdletization_values, $true, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('LocalPath') -and (@('ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${LocalPath})
                    $__cmdletization_queryBuilder.FilterByProperty('LocalPath', $__cmdletization_values, $true, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('Before') -and (@('BySID', 'ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    [object]$__cmdletization_value = ${Before}
                    $__cmdletization_queryBuilder.FilterByMaxPropertyValue('LastUseTime', $__cmdletization_value, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('Status') -and (@('BySID', 'ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${Status})
                    $__cmdletization_queryBuilder.FilterByProperty('Status', $__cmdletization_values, $false, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('Loaded') -and (@('BySID', 'ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${Loaded})
                    $__cmdletization_queryBuilder.FilterByProperty('Loaded', $__cmdletization_values, $false, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('Roaming') -and (@('BySID', 'ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${Roaming})
                    $__cmdletization_queryBuilder.FilterByProperty('RoamingConfigured', $__cmdletization_values, $false, 'Default')
                }
                if ($PSBoundParameters.ContainsKey('Special') -and (@('BySID', 'ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${Special})
                    $__cmdletization_queryBuilder.FilterByProperty('Special', $__cmdletization_values, $false, 'Default')
                }


                $__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder)
            }
        } catch {
            $__cmdletization_exceptionHasBeenThrown = $true
            throw
        }
    }


    End {
        try {
            if (-not $__cmdletization_exceptionHasBeenThrown) {
                $__cmdletization_objectModelWrapper.EndProcessing()
            }
        } catch {
            throw
        }
    }
}
