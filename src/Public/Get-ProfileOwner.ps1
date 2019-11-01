
function Get-ProfileOwner {
    # .EXTERNALHELP ProfileOwner.cdxml-Help.xml

    [CmdletBinding(
        PositionalBinding = $false
    )]

    [OutputType([Microsoft.Management.Infrastructure.CimInstance])]
    [OutputType('Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_Account')]

    param(
            [Parameter(
                Mandatory,
                Position = 0,
                ValueFromPipelineByPropertyName
            )]
            [ValidateNotNull()]
            [System.Security.Principal.SecurityIdentifier]
        $SID,

            [Alias('Session')]
            [ValidateNotNullOrEmpty()]
            [CimSession]
        $CimSession,

            [int]
        $ThrottleLimit,

            [switch]
        $AsJob)

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
