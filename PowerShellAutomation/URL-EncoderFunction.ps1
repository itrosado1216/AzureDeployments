<#
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/$URL)
#>
Function Start-URLEncoding {
    [cmdletbinding()]
    param (
    [Parameter(Mandatory='true')]
    [String]$URL
    )
    
    [uri]::EscapeDataString($url)
}
