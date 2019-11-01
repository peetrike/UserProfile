function Set-ProfileOwner {
    # .EXTERNALHELP Win32_UserProfile.cdxml-Help.xml

    [CmdletBinding(
        DefaultParameterSetName = 'ByPath',
        SupportsShouldProcess = $true,
        ConfirmImpact = 'Medium',
        PositionalBinding = $false
    )]

    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_UserProfile')]

    param(
            [Parameter(
                ParameterSetName = 'ByPath',
                Mandatory,
                ValueFromPipelineByPropertyName
            )]
            [Alias('Path')]
            [ValidateNotNull()]
            [string[]]
        $LocalPath,

            [Parameter(
                ParameterSetName = 'InputObject (cdxml)',
                Mandatory,
                ValueFromPipeline
            )]
            [PSTypeName('Microsoft.Management.Infrastructure.CimInstance#Win32_UserProfile')]
            [ValidateNotNull()]
            [ciminstance[]]
        $InputObject,

            [Parameter(Mandatory)]
            [ValidateNotNull()]
            [ValidateNotNullOrEmpty()]
            [Alias('NewSID')]
            [System.Security.Principal.SecurityIdentifier]
        $SID,
            [Microsoft.PowerShell.Cmdletization.GeneratedTypes.UserProfile.ChangeOwner.Flags]
        $Flags,
            [ValidateNotNullOrEmpty()]
            [CimSession[]]
            [Alias('Session')]
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
                if ($PSBoundParameters.ContainsKey('LocalPath') -and (@('ByPath') -contains $PSCmdlet.ParameterSetName )) {
                    $__cmdletization_values = @(${LocalPath})
                    $__cmdletization_queryBuilder.FilterByProperty('LocalPath', $__cmdletization_values, $true, 'Default')
                }

                $__cmdletization_methodParameters = [System.Collections.Generic.List[Microsoft.PowerShell.Cmdletization.MethodParameter]]::new()
                switch -exact ($PSCmdlet.ParameterSetName) {
                    { @('ByPath', 'InputObject (cdxml)') -contains $_ } {
                        [object]$__cmdletization_defaultValue = $null
                        [object]$__cmdletization_defaultValueIsPresent = $false
                        if ($PSBoundParameters.ContainsKey('SID')) {
                            [object]$__cmdletization_value = ${SID}
                            $__cmdletization_methodParameter = [Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NewOwnerSID'; ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true }
                        } else {
                            $__cmdletization_methodParameter = [Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'NewOwnerSID'; ParameterType = 'System.String'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent }
                        }
                        $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

                        [object]$__cmdletization_defaultValue = $null
                        [object]$__cmdletization_defaultValueIsPresent = $false
                        if ($PSBoundParameters.ContainsKey('Flags')) {
                            [object]$__cmdletization_value = ${Flags}
                            $__cmdletization_methodParameter = [Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Flags'; ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.UserProfile.ChangeOwner.Flags'; Bindings = 'In'; Value = $__cmdletization_value; IsValuePresent = $true }
                        } else {
                            $__cmdletization_methodParameter = [Microsoft.PowerShell.Cmdletization.MethodParameter]@{Name = 'Flags'; ParameterType = 'Microsoft.PowerShell.Cmdletization.GeneratedTypes.UserProfile.ChangeOwner.Flags'; Bindings = 'In'; Value = $__cmdletization_defaultValue; IsValuePresent = $__cmdletization_defaultValueIsPresent }
                        }
                        $__cmdletization_methodParameters.Add($__cmdletization_methodParameter)

                        $__cmdletization_returnValue = $null
                        $__cmdletization_methodInvocationInfo = [Microsoft.PowerShell.Cmdletization.MethodInvocationInfo]::new('ChangeOwner', $__cmdletization_methodParameters, $__cmdletization_returnValue)
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
