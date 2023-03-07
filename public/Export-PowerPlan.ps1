function Export-PowerPlan {
	<#
	.SYNOPSIS
		Export Windows Power Plan
	.DESCRIPTION
		Export a Windows Power Plan configuration to a .pow file
	.PARAMETER ID
		GUID for Power Plan. Use Get-PowerPlan to list plan names and ID values.
	.PARAMETER Name
		Optional name for file. If not provided, default name is the ID number
	.PARAMETER Path
		Path where file is exported. Default is $env:TEMP
	.PARAMETER FileType
		Options are 'pow' or 'txt'. Default is 'pow'
	.EXAMPLE
		Export-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e -Path c:\temp
		Exports the power plan to c:\temp\381b4222-f694-41f0-9685-ff5bb260df2e.pow
	.EXAMPLE
		Export-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e -Path c:\temp -FileType txt
		Exports the power plan to c:\temp\381b4222-f694-41f0-9685-ff5bb260df2e.txt
	.EXAMPLE
		Get-PowerPlan | Select-Object -ExpandProperty ID | Export-PowerPlan -Path c:\temp -FileType txt
		Exports all power plans to c:\temp as .txt files
	.NOTES
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Export-PowerPlan.md
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory, ValueFromPipeline=$True)][string[]]$ID,
		[parameter()][string]$Path = "$($env:TEMP)",
		[parameter()][string][ValidateSet('pow','txt')]$FileType = 'pow'
	)
	begin {}
	process {
		$ID | Foreach-Object {
			$pid = $_
			if ($FileType -eq 'pow') {
				Write-Verbose "powercfg /export filepath $pid"
				$x = POWERCFG /EXPORT "$(Join-Path $Path $pid).txt" $pid
			} else {
				Write-Verbose "powercfg /query $pid"
				$x = POWERCFG /QUERY $pid
				$x | Out-File -FilePath "$(Join-Path $Path $pid).txt" -Encoding utf8 -Force
			}
		}
	}
	end {}
}