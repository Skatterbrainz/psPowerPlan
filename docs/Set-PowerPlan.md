---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version: https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Set-PowerPlan.md
schema: 2.0.0
---

# Set-PowerPlan

## SYNOPSIS
Set Active Power Plan

## SYNTAX

```
Set-PowerPlan [[-ID] <String>] [-Interactive] [<CommonParameters>]
```

## DESCRIPTION
Set Active Power Plan from a list of standard names

## EXAMPLES

### EXAMPLE 1
```
Set-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e
```

## PARAMETERS

### -ID
GUID of power plan to set active

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interactive
If ID is not provided, and Interactive is requested, the available Power plans
are displayed in a GridView to select one to set active.

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

[https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Set-PowerPlan.md](https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Set-PowerPlan.md)

