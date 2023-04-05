---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version: https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/New-PowerPlanReport.md
schema: 2.0.0
---

# New-PowerPlanReport

## SYNOPSIS
Export a Power Plan statistics report

## SYNTAX

```
New-PowerPlanReport [-OutputFolder] <String> [[-Format] <String>] [[-Days] <Int32>] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
Export a Power Plan statistics and analysis report

## EXAMPLES

### EXAMPLE 1
```
New-PowerPlanReport -OutputFolder c:\temp -Format XML -Days 7
```

Report file is saved to output path but no content is returned to pipeline

### EXAMPLE 2
```
New-PowerPlanReport -OutputFolder c:\temp -Format XML -Days 7 -PassThru
```

Report file is saved to output path and content is returned to pipeline as XML DOM

### EXAMPLE 3
```
New-PowerPlanReport -OutputFolder c:\temp -Format JSON -Days 7 -PassThru
```

Report file is saved to output path and content is returned to pipeline as PSObject data

## PARAMETERS

### -OutputFolder
Path where report file will be created.
File name is "powerplanreport_COMPUTERNAME.ext"
Where "ext" is based on the -Format option

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Format
Format for report file: HTML, XML or JSON
If HTML is chosen,and -PassThru is used, report is opened in default web browser
If XML is chosen with -PassThru, XML DOM data is returned from file content
If JSON is chosen with -PassThru, JSON content is convert into PSObject output

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: HTML
Accept pipeline input: False
Accept wildcard characters: False
```

### -Days
Number of days to analyze power usage.
Default is 3 (days)

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 3
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Return report data to console pipeline (except HTML)

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/New-PowerPlanReport.md](https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/New-PowerPlanReport.md)

