function New-PowerPlanReport {
	<#
	.SYNOPSIS
		Export a Power Plan statistics report
	.DESCRIPTION
		Export a Power Plan statistics and analysis report
	.PARAMETER OutputFolder
		Path where report file will be created. File name is "powerplanreport_COMPUTERNAME.ext"
		Where "ext" is based on the -Format option
	.PARAMETER Format
		Format for report file: HTML, XML or JSON
		If HTML is chosen,and -PassThru is used, report is opened in default web browser
		If XML is chosen with -PassThru, XML DOM data is returned from file content
		If JSON is chosen with -PassThru, JSON content is convert into PSObject output
	.PARAMETER Days
		Number of days to analyze power usage. Default is 3 (days)
	.PARAMETER PassThru
		Return report data to console pipeline (except HTML)
	.EXAMPLE
		New-PowerPlanReport -OutputFolder c:\temp -Format XML -Days 7

		Report file is saved to output path but no content is returned to pipeline
	.EXAMPLE
		New-PowerPlanReport -OutputFolder c:\temp -Format XML -Days 7 -PassThru

		Report file is saved to output path and content is returned to pipeline as XML DOM
	.EXAMPLE
		New-PowerPlanReport -OutputFolder c:\temp -Format JSON -Days 7 -PassThru

		Report file is saved to output path and content is returned to pipeline as PSObject data
	.LINK
		https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/New-PowerPlanReport.md
	#>
	[CmdletBinding()]
	param (
		[parameter(Mandatory)][string]$OutputFolder,
		[parameter()][string][ValidateSet('HTML','XML','JSON')]$Format = 'HTML',
		[parameter()][int]$Days = 3,
		[parameter()][switch]$PassThru
	)
	$filepath = Join-Path $OutputFolder "powerplanreport_$($env:COMPUTERNAME).$($Format.ToLower())"
	switch ($Format) {
		'HTML' {
			POWERCFG /SYSTEMPOWERREPORT /OUTPUT $FilePath /DURATION $Days
			if ((Test-Path $FilePath) -and $PassThru) {
				Start-Process $FilePath
				Write-Host "file: $FilePath"
			}
		}
		'XML' {
			POWERCFG /SYSTEMPOWERREPORT /OUTPUT $FilePath /DURATION $Days /XML
			if ((Test-Path $FilePath) -and $PassThru) {
				[xml](Get-Content -Path $FilePath)
				Write-Host "file: $FilePath"
			}
		}
		'JSON' {
			POWERCFG /SYSTEMPOWERREPORT /OUTPUT $FilePath /DURATION $Days /JSON
			if ((Test-Path $FilePath) -and $PassThru) {
				Get-Content -Path $FilePath | ConvertFrom-Json
				Write-Host "file: $FilePath"
			}
		}
	}
}