# Simple Current Mirror — Design Specification

## Project Info
- Designer: Muntasir Fahad
- Date: 12 Oct 2026
- PDK: SKY130A
- Tools: Xschem, ngspice 46, Magic VLSI, Netgen

## Specifications
| Parameter | Value |
|-----------|-------|
| Iref | 10 uA |
| Mirror Ratio | 1:1 |
| VDD | 1.8 V |
| Vout range | 0 - 1.8 V |
| Devices | sky130_fd_pr__nfet_01v8 |
| Temperature | 27 C |

## Hand Calculation
- Target Vov = 150 mV
- VTH ~ 0.7 V (SKY130 NMOS)
- VGS = VTH + Vov = 0.85 V
- unCox ~ 200 uA/V^2
- W/L = 2*Id / (unCox * Vov^2) = 2*10u / (200u * 0.0225) ~ 4.44
- Initial sizing: W = 5 um, L = 1 um (both M1, M2)

## Goals
- Iout within +/-5% of Iref in saturation
- Output resistance Rout > 100 kOhm
- Minimum Vout for saturation < 0.3 V

## Flow
Schematic -> Pre-layout sim -> Layout -> DRC -> LVS -> PEX -> Post-layout sim
