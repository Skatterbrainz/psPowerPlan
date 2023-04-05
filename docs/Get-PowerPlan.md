---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version: https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlan.md
schema: 2.0.0
---

# Get-PowerPlan

## SYNOPSIS
Returns Windows power plans.

## SYNTAX

```
Get-PowerPlan [[-ID] <String>] [[-ComputerName] <String>] [-IsActive] [<CommonParameters>]
```

## DESCRIPTION
Returns all Windows power plans or just the active power plan.

## EXAMPLES

### EXAMPLE 1
```
Get-PowerPlan
Returns all power plans defined on the local computer
```

### EXAMPLE 2
```
Get-PowerPlan -IsActive
Returns the current power plan for the local computer
```

### EXAMPLE 3
```
Get-PowerPlan -IsActive -ComputerName WS123
Returns the current power plan for computer WS123
```

## PARAMETERS

### -ID
Optional GUID for a specific power plan (default is to return all power plans)

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

### -ComputerName
Optional name of a remote computer.
Default is local computer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsActive
Optional.
Return only the active power plan

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

[https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlan.md](https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Get-PowerPlan.md)

