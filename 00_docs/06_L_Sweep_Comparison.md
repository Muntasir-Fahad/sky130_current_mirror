# L-Sweep Comparison — 1um vs 2um vs 4um

## Purpose
Study effect of channel length on:
- Mirror accuracy
- Output resistance
- CLM parameter

## Results Table

| L (um) | W (um) | Iout @1.8V | Error | gds (uS) | Rout (MOhm) | Lambda (1/V) |
|--------|--------|------------|-------|----------|-------------|--------------|
| 1      | 5      | 10.83 uA   | 8.3%  | 0.707    | 1.41        | 0.080        |
| 2      | 10     | 10.79 uA   | 7.9%  | 0.652    | 1.53        | 0.075        |
| 4      | 20     | 10.50 uA   | 4.97% | 0.410    | 2.44        | 0.045        |

## Trends
- L increases -> Rout increases, Lambda decreases, error decreases
- VTH decreases with L (reverse short channel effect)

## Trade-offs
- Larger L = more area, slower speed
- Smaller L = faster, less accurate

## Design Choice
L = 4 um chosen for balance between accuracy, Rout, and area
