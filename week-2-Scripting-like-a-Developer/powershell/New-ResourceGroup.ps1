function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]
    param (
        [parameter(mandatory)]
        [string]$rgName,

        [Parameter(mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgName
        'Location' = $location
    }

    if ($PSCmdlet.ShouldProcess('location')) {
        New-AzResourceGroup @params
    }
}
# Apart from an "allowed locations policy" that I previously set for
# an unrelated project blocking the RG creation. The code was
# all good.