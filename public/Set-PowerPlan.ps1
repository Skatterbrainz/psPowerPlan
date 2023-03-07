function Set-PowerPlan {
	<#
	.SYNOPSIS
		Set Active Power Plan
	.DESCRIPTION
		Set Active Power Plan from a list of standard names
	.PARAMETER ID
		GUID of power plan to set active
	.EXAMPLE
		Set-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Set-PowerPlan.md
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory=$True)][string]$ID
	)
	try {
		$plans = Get-PowerPlan
		if ($ID -in ($plans.ID)) {
			if ($ID -eq $($plans | Where-Object {$_.IsActive -eq $True} | Select-Object -ExpandProperty ID)) {
				Write-Warning "*** $ID is already active"
			} else {
				POWERCFG /SETACTIVE $ID
				Write-Host "$ID is now active"
			}
		}
	} catch {
		Write-Error $_.Exception.Message
	}
}