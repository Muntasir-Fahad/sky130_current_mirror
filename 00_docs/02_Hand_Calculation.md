# Simple Current Mirror — Hand Calculation

## Design Target
- Iref = 10 uA
- Mirror ratio 1:1
- VDD = 1.8 V

## Saturation Equation
Id = (1/2) * un*Cox * (W/L) * Vov^2

## Step 1: Choose Vov
Vov = 150 mV (moderate inversion, good headroom)

## Step 2: VGS Calculation
VGS = VTH + Vov
Assume VTH ~ 0.7 V (SKY130 typical)
VGS = 0.7 + 0.15 = 0.85 V

## Step 3: W/L Calculation
un*Cox ~ 200 uA/V^2 (approx)
W/L = (2 * Id) / (un*Cox * Vov^2)
    = (2 * 10u) / (200u * 0.15^2)
    = 20u / (200u * 0.0225)
    = 20 / 4.5
    = 4.44

## Step 4: Initial Sizing
L = 1 um -> W = 4.44 um -> round to W = 5 um
W/L = 5/1 = 5 (close to target 4.44)

## Notes
- Actual VTH from simulation: 0.589 V (not 0.7 V)
- Actual Vov: 0.112 V
- Actual Id: 10 uA (matched!)
- Hand calc gives starting point, simulation refines

## Iteration Log
| L (um) | W (um) | W/L | Iout @ Vout=1.8V | Error |
|--------|--------|-----|------------------|-------|
| 1      | 5      | 5   | 10.83 uA         | 8.3%  |
| 2      | 10     | 5   | 10.79 uA         | 7.9%  |
| 4      | 20     | 5   | 10.50 uA         | 4.97% |
