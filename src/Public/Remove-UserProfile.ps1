function Remove-UserProfile {
    # .EXTERNALHELP Win32_UserProfile.cdxml-Help.xml
    [CmdletBinding(
        DefaultParameterSetName = 'ByPath',
        SupportsShouldProcess = $true,
        ConfirmImpact = 'High',
        PositionalBinding = $false
    )]

    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile')]

    param(
            [Parameter(
                ParameterSetName = 'BySID',
                Mandatory,
                ValueFromPipelineByPropertyName
            )]
            [ValidateNotNull()]
            [System.Security.Principal.SecurityIdentifier]
        $SID,
            [Parameter(
                ParameterSetName = 'ByPath',
                Mandatory,
                ValueFromPipeline
            )]
            [Alias('Path', 'FullName')]
            [ValidateNotNull()]
            [string[]]
        $LocalPath,
            [Parameter(
                ParameterSetName = 'InputObject (cdxml)',
                Mandatory = $true,
                ValueFromPipeline = $true
            )]
            [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#Win32_UserProfile')]
            [ValidateNotNull()]
            [ciminstance[]]
        $InputObject,

            [Parameter(ParameterSetName = 'BySID')]
            [Parameter(ParameterSetName = 'ByPath')]
            [datetime]
        $Before,
            [Parameter(ParameterSetName = 'BySID')]
            [Parameter(ParameterSetName = 'ByPath')]
            [ValidateNotNull()]
            [Microsoft.PowerShell.Cmdletization.GeneratedTypes.UserProfile.Status[]]
        $Status,
            [Parameter(ParameterSetName = 'BySID')]
            [Parameter(ParameterSetName = 'ByPath')]
            [ValidateNotNull()]
            [bool[]]
        $Loaded,
            [Parameter(ParameterSetName = 'BySID')]
            [Parameter(ParameterSetName = 'ByPath')]
            [ValidateNotNull()]
            [bool[]]
        $Roaming,
            [Parameter(ParameterSetName = 'BySID')]
            [Parameter(ParameterSetName = 'ByPath')]
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
        $AsJob,
            [switch]
        $PassThru
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

                $__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerShell.Cmdletization.MethodParameter]]::new()
                switch -exact ($PSCmdlet.ParameterSetName) {
                    { @('BySID', 'ByPath', 'InputObject (cdxml)') -contains $_ } {
                        $__cmdletization_returnValue = [Microsoft.PowerShell.Cmdletization.MethodParameter]@{ Name = 'ReturnValue'; ParameterType = 'System.Int32'; Bindings = 'Error'; Value = $null; IsValuePresent = $false }
                        $__cmdletization_methodInvocationInfo = [Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('cim:DeleteInstance', $__cmdletization_methodParameters, $__cmdletization_returnValue)
                        $__cmdletization_passThru = $PSBoundParameters.ContainsKey('PassThru') -and $PassThru
                        if ($PSBoundParameters.ContainsKey('InputObject')) {
                            foreach ($x in $InputObject) { $__cmdletization_objectModelWrapper.ProcessRecord($x, $__cmdletization_methodInvocationInfo, $__cmdletization_PassThru) }
                        } else {
                            $__cmdletization_objectModelWrapper.ProcessRecord($__cmdletization_queryBuilder, $__cmdletization_methodInvocationInfo, $__cmdletization_PassThru)
                        }
                    }
                }

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
