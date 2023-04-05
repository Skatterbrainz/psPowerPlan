function Copy-PowerPlan {
	<#
	.SYNOPSIS
		Copy an existing Power Plan to a new Power Plan
	.DESCRIPTION
		Ummmm, yeah.
	.PARAMETER ID
		Required. The GUID of the source Power Plan
	.PARAMETER Name
		Required. The Name for the new/destination Power Plan
	.PARAMETER Description
		Optional. A Description for the new/destination Power Plan
	.EXAMPLE
		Copy-PowerPlan -ID e91560ac-f5f2-4d89-a16e-382d2a21dd10 -Name "New Power Plan" -Description "My New Power Plan"
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Copy-PowerPlan.md
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory=$True, ValueFromPipeline=$True)]$ID,
		[parameter(Mandatory=$True)][string]$Name,
		[parameter()][string]$Description = ""
	)
	BEGIN {}
	PROCESS {
		$newid = $([guid]::NewGuid()).Guid
		if (Get-PowerPlan -ID $ID) {
			POWERCFG /DUPLICATESCHEME $ID $newid
			if ([string]::IsNullOrWhiteSpace($Description)) {
				POWERCFG /CHANGENAME $newid "$Name"
			} else {
				POWERCFG /CHANGENAME $newid "$Name" "$Description"
			}
			Get-PowerPlan | Where-Object {$_.ID -eq $newid}
		}
	}
	END {}
}