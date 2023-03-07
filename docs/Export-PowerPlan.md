---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version: https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Export-PowerPlan.md
schema: 2.0.0
---

# Export-PowerPlan

## SYNOPSIS
Export Windows Power Plan

## SYNTAX

```
Export-PowerPlan [-ID] <String[]> [[-Path] <String>] [[-FileType] <String>] [<CommonParameters>]
```

## DESCRIPTION
Export a Windows Power Plan configuration to a .pow file

## EXAMPLES

### EXAMPLE 1
```
Export-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e -Path c:\temp
```

Exports the power plan to c:\temp\381b4222-f694-41f0-9685-ff5bb260df2e.pow

### EXAMPLE 2
```
Export-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e -Path c:\temp -FileType txt
```

Exports the power plan to c:\temp\381b4222-f694-41f0-9685-ff5bb260df2e.txt

### EXAMPLE 3
```
Get-PowerPlan | Select-Object -ExpandProperty ID | Export-PowerPlan -Path c:\temp -FileType txt
```

Exports all power plans to c:\temp as .txt files

## PARAMETERS

### -ID
GUID for Power Plan.
Use Get-PowerPlan to list plan names and ID values.

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
Path where file is exported.
Default is $env:TEMP

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: "$($env:TEMP)"
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileType
Options are 'pow' or 'txt'.
Default is 'pow'

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: Pow
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Export-PowerPlan.md](https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Export-PowerPlan.md)

