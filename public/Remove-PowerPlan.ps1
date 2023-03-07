function Remove-PowerPlan {
	<#
	.SYNOPSIS
		Delete a Windows power plan
	.DESCRIPTION
		Delete a specific Windows power plan
	.PARAMETER ID
		The GUID for the power plan to be removed
	.EXAMPLE
		Remove-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e
		Deletes power plan with ID of 381b4222-f694-41f0-9685-ff5bb260df2e
	.NOTES
	.LINK
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory,ValueFromPipeline=$True)][guid]$ID
	)
	try {
		$plans = Get-PowerPlan
		if ($ID -in $plans.ID) {
			if ($ID -eq $($plans | Where-Object {$_.IsActive -eq $True} | Select-Object -ExpandProperty ID)) {
				Write-Warning "*** You cannot delete the active power plan ***"
			} else {
				POWERCFG /DELETE $ID
			}
		}
	} catch {
		Write-Error $_.Exception.Message
	}
}