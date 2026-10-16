# DC Sweep Analysis — Vout vs Iout

## Setup
- Sweep V2 (Vout) from 0 to 1.8 V
- Step: 0.01 V
- Iref = 10 uA constant

## Curve Regions

### Region 1: Vout = 0 to 0.12 V (Triode)
- M2 in triode region
- Current rises steeply from 0 to ~9.5 uA
- Acts like variable resistor

### Region 2: Vout = 0.12 to 0.66 V (Saturation entry)
- M2 enters saturation at Vout = Vdsat = 0.12 V
- Current approaches 10 uA
- Knee point visible on plot

### Region 3: Vout > 0.66 V (Deep saturation)
- M2 fully in saturation
- Current slowly rises due to CLM
- Vout = 1.8 V -> Iout = 10.5 uA

## Perfect Match Point
- At Vout = 0.66 V, Iout = 10.00 uA
- Why: M2's Vds = M1's Vds = 0.66 V
- Mirror error = 0% at this point

## Plot
See: vout_sweep_L4.png
