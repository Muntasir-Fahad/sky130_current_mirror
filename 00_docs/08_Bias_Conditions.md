# Bias Conditions — Current Mirror

## Requirement
Both transistors must be in SATURATION region.

## M1 (Diode-Connected)
- Vgs = Vds (automatic)
- Vgs > Vth (required)
- Always in saturation when ON

## M2 (Mirror)
- Vgs = Vgs(M1) (same gate)
- Vds = Vout (external)
- Condition: Vout > Vov = 0.12 V

## Bias Summary

| Parameter | M1 | M2 | Condition |
|-----------|-----|-----|-----------|
| Vgs | 0.659 V | 0.659 V | Same |
| Vth | 0.535 V | 0.535 V | Same |
| Vov | 0.123 V | 0.123 V | Same |
| Vds | 0.659 V | 1.800 V | Different |
| Region | Sat | Sat | OK |

## Minimum Vout
Vout,min = Vov = 0.12 V

## Perfect Match
Vout = Vgs = 0.66 V gives 0% mirror error
