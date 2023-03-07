function Get-PowerPlanSettings {
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