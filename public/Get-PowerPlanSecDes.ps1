function Get-PowerPlanSecDes {
	param (
		[parameter(Mandatory)]$ID,
		[parameter()][string][ValidateSet('None','SetActive','Create','Default')]$Action = 'None',
		[parameter()][switch]$Raw
	)
	if ($Action -ne 'None') {
		$sdef = POWERCFG /GETSECURITYDESCRIPTOR $ID $Action
	} else {
		$sdef = POWERCFG /GETSECURITYDESCRIPTOR $ID
	}
	if ($Raw) {
		$sdef
	} else {
		$sdef.Split(')(') | Foreach-Object {$_.Split(')')} | Foreach-Object {$_.TrimEnd(')')}
	}
}
