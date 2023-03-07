---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version:
schema: 2.0.0
---

# Import-PowerPlan

## SYNOPSIS
Import Windows Power Plan from File

## SYNTAX

```
Import-PowerPlan [-FilePath] <String> [<CommonParameters>]
```

## DESCRIPTION
Import a Windows Power Plan configuration from a .pow file

## EXAMPLES

### EXAMPLE 1
```
Import-PowerPlan -FilePath "c:\temp\mypowerplan.pow"
```

## PARAMETERS

### -FilePath
Path and name of .pow file to import

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Management.Automation.PSObject
## NOTES

## RELATED LINKS
