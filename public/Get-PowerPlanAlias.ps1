function Get-PowerPlanAlias {
	<#
	.SYNOPSIS
		Get Power Plan aliases
	.DESCRIPTION
		Returns all power plan settings, including name, type and parent/child association
	.PARAMETER (none)
	.EXAMPLE
		Get-PowerPlanAlias
	.NOTES
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlanAlias.md
	#>
	[CmdletBinding()]
	param ()
	$x = POWERCFG /ALIASES | Where-Object {![string]::IsNullOrWhiteSpace($_)}
	foreach ($item in $x) {
		$id = $item.Substring(0,36)
		if ($item.Substring(38,1) -ne " ") {
			$name = $item.Substring(38)
			$pn = $name
			[pscustomobject]@{ID = $id; Name = $name; Parent = $null; Type = 'PARENT'}
		} else {
			$name = $item.Substring(40)
			[pscustomobject]@{ID = $id; Name = $name; Parent = $pn; Type = 'CHILD'}
		}
	}
}