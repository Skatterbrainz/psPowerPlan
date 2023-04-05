---
external help file: psPowerPlan-help.xml
Module Name: psPowerPlan
online version: https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Copy-PowerPlan.md
schema: 2.0.0
---

# Copy-PowerPlan

## SYNOPSIS
Copy an existing Power Plan to a new Power Plan

## SYNTAX

```
Copy-PowerPlan [-ID] <Object> [-Name] <String> [[-Description] <String>] [<CommonParameters>]
```

## DESCRIPTION
Ummmm, yeah.

## EXAMPLES

### EXAMPLE 1
```
Copy-PowerPlan -ID e91560ac-f5f2-4d89-a16e-382d2a21dd10 -Name "New Power Plan" -Description "My New Power Plan"
```

## PARAMETERS

### -ID
Required.
The GUID of the source Power Plan

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Required.
The Name for the new/destination Power Plan

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Optional.
A Description for the new/destination Power Plan

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Copy-PowerPlan.md](https://github.com/Skatterbrainz/psPowerPlan/blob/master/docs/Copy-PowerPlan.md)

