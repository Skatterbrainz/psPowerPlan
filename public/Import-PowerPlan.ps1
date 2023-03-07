function Import-PowerPlan {
	<#
	.SYNOPSIS
		Import Windows Power Plan from File
	.DESCRIPTION
		Import a Windows Power Plan configuration from a .pow file
	.PARAMETER FilePath
		Path and name of .pow file to import
	.EXAMPLE
		Import-PowerPlan -FilePath "c:\temp\mypowerplan.pow"
	.NOTES
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Import-PowerPlan.md
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory)][string]$FilePath
	)
	try {
		if (!(Test-Path $FilePath)) {
			throw "File not found: $FilePath"
		}
		$result = POWERCFG /IMPORT $FilePath
		if ($result -match "Successfully") {
			$x = $result -split 'GUID:'
			[pscustomobject]@{
				Status = 'Success'
				ID = $($x[1]).Trim()
			}
		} else {
			throw $result
		}
	}
	catch {
		Write-Error $_.Exception.Message
	}
}
