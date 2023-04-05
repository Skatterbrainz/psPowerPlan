function Get-PowerPlan {
	<#
	.SYNOPSIS
		Returns Windows power plans.
	.DESCRIPTION
		Returns all Windows power plans or just the active power plan.
	.PARAMETER ID
		Optional GUID for a specific power plan (default is to return all power plans)
	.PARAMETER ComputerName
		Optional name of a remote computer. Default is local computer.
	.PARAMETER IsActive
		Optional. Return only the active power plan
	.EXAMPLE
		Get-PowerPlan
		Returns all power plans defined on the local computer
	.EXAMPLE
		Get-PowerPlan -IsActive
		Returns the current power plan for the local computer
	.EXAMPLE
		Get-PowerPlan -IsActive -ComputerName WS123
		Returns the current power plan for computer WS123
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlan.md
	#>
	[CmdletBinding()]
	param (
		[parameter()][string]$ID = "",
		[parameter()][string]$ComputerName = "",
		[parameter()][switch]$IsActive
	)
	if ([string]::IsNullOrWhiteSpace($ID)) {
		$params = @{
			Class = "Win32_PowerPlan"
			Namespace = "root\cimv2\power"
		}
		if (![string]::IsNullOrWhiteSpace($ComputerName)) {
			$params.Add("ComputerName", $ComputerName)
		}
		$plans = @(Get-WmiObject @params)
		if ($IsActive) {
			$plans = @($plans | Where-Object {$_.IsActive -eq $True})
		}
		foreach ($plan in $plans) {
			$id = $plan.InstanceID.Split('\')[1].Substring(1,36)
			[pscustomobject]@{
				Name = $plan.ElementName
				Description = $plan.Description
				Caption = $plan.Caption
				ID = $id
				IsActive = $plan.IsActive
			}
		}
	} else {
		POWERCFG -QUERY $($ID).Trim()
	}
}
