function Get-PowerRequests {
	param()
	$requests = POWERCFG /REQUESTS
	$data = $($requests -join ';').Split(';;')
	$result = @{}
	$data | Foreach-Object {
		$list = $_ -split ':;'
		$val = $list[1].replace(';','').replace('.','')
		$result.Add($list[0], $val)
	}
	[pscustomobject]$result
}