#Function that downloads the CentreStack installer to the 
Function Import-CSInstaller {
    [cmdletbinding()]
    param (
        [Parameter(Mandatory = 'true')]
        $CSVersion,
        $Downloadlink = 'https://s3.amazonaws.com/gladinetsupport/GCE/zip/',
        $Outpath = "$env:SystemDrive\Windows\temp\"
    )
    Begin {
        $DlLink = $Downloadlink + "installEntGUI$CSVersion.exe"
        Write-Host $DlLink -ForegroundColor Green
    }
    Process {
        try {
            Invoke-WebRequest -OutFile "$Outpath\installEntGUI$CSVersion.exe" -Uri $DlLink -ErrorAction Stop
        }
        catch [System.Net.WebException] {
            Write-Error -Message "The Provided version was not found. Please try again."
        }
    }
    End {}
}
Import-CSInstaller -CSVersion '9377'

