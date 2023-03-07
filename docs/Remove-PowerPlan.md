---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version:
schema: 2.0.0
---

# Remove-PowerPlan

## SYNOPSIS
Delete a Windows power plan

## SYNTAX

```
Remove-PowerPlan [-ID] <Guid> [<CommonParameters>]
```

## DESCRIPTION
Delete a specific Windows power plan

## EXAMPLES

### EXAMPLE 1
```
Remove-PowerPlan -ID 381b4222-f694-41f0-9685-ff5bb260df2e
```

Deletes power plan with ID of 381b4222-f694-41f0-9685-ff5bb260df2e

## PARAMETERS

### -ID
The GUID for the power plan to be removed

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
