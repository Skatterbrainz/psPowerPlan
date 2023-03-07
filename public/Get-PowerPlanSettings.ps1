function Get-PowerPlanSettings {
	<#
	.SYNOPSIS
	.DESCRIPTION
	.PARAMETER ID
		Optional GUID for a specific power plan setting
	.PARAMETER ComputerName
		Optional name for remote computer to query. Default is local computer
	.EXAMPLE
		Get-PowerPlanSettings
	.NOTES
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlanSettings.md
	#>
	[CmdletBinding()]
	param (
		[parameter()][string]$ID = "",
		[parameter()][string]$ComputerName = ""
	)
	try {
		$params = @{
			Class = "Win32_PowerSetting"
			Namespace = "root\cimv2\power"
		}
		if (![string]::IsNullOrWhiteSpace($ComputerName)) {
			$params.Add("ComputerName", $ComputerName)
		}
		Get-WmiObject @params | Select-Object @{l="ID";e={$_.InstanceID.Split('\\')[1].Substring(1,36)}},@{l="SettingName";e={$_.ElementName}},Description
	} catch {
		Write-Error $_.Exception.Message
	}
}