# SKY130 Simple Current Mirror

Analog IC Design project — Simple Current Mirror in SKY130A PDK with full pre-layout flow: schematic → simulation → DC sweep → L-sweep study → CLM analysis.

## Overview

A 1:1 current mirror designed in SKY130A (130 nm CMOS). Includes hand calculation, schematic design, operating point analysis, Vout-Iout DC sweep, channel length study, and CLM/lambda extraction.

## Design Specifications

| Parameter | Value |
|-----------|-------|
| Technology | SKY130A (tt corner) |
| Supply Voltage | 1.8 V |
| Iref | 10 µA |
| Mirror Ratio | 1:1 |
| NMOS (M1 / M2) | W = 20 µm / L = 4 µm |
| Device | sky130_fd_pr__nfet_01v8 |
| Temperature | 27°C |

## Hand Calculation

| Step | Value |
|------|-------|
| Vov (target) | 150 mV |
| VGS (target) | 0.85 V |
| un·Cox (approx) | 200 µA/V² |
| W/L (calculated) | 4.44 |
| Initial sizing | W = 5 µm, L = 1 µm |

## Final Sizing (after iteration)

| Device | L | W | W/L |
|--------|---|---|-----|
| M1 (Reference) | 4 µm | 20 µm | 5 |
| M2 (Mirror) | 4 µm | 20 µm | 5 |

## Key Results — OP Analysis

### M1 (Reference, Diode-Connected)
| Parameter | Value |
|-----------|-------|
| Id | 10.00 µA |
| Vgs | 0.6586 V |
| Vds | 0.6586 V |
| Vth | 0.5351 V |
| Vov | 0.1235 V |
| gm | 144.1 µS |
| gds | 0.496 µS |
| Region | Saturation |

### M2 (Mirror)
| Parameter | Value |
|-----------|-------|
| Id | 10.497 µA |
| Vgs | 0.6586 V |
| Vds | 1.7999 V |
| Vth | 0.5351 V |
| Vov | 0.1235 V |
| gm | 148.9 µS |
| gds | 0.410 µS |
| Region | Saturation |

## Performance Summary

| Spec | Target | Achieved | Status |
|------|--------|----------|--------|
| Iref | 10 µA | 10.00 µA | PASS |
| Mirror Error | < 5% | **4.97%** | PASS |
| Rout | > 100 kΩ | **2.44 MΩ** | PASS |
| Min Vout (sat) | < 0.3 V | **0.12 V** | PASS |
| Region | Saturation | Both Sat | PASS |

## L-Sweep Study

| L (µm) | W (µm) | Iout @1.8V | Error | gds (µS) | Rout (MΩ) | λ (1/V) |
|--------|--------|------------|-------|----------|-----------|---------|
| 1 | 5 | 10.83 µA | 8.3% | 0.707 | 1.41 | 0.080 |
| 2 | 10 | 10.79 µA | 7.9% | 0.652 | 1.53 | 0.075 |
| 4 | 20 | 10.50 µA | 4.97% | 0.410 | 2.44 | 0.045 |

**Conclusion:** Longer L improves matching (less CLM), at cost of area and speed.

## CLM Analysis

- Lambda (L=4µm): 0.045 V⁻¹
- Early Voltage: 22.3 V
- Mirror error model: `Error = λ × (Vds2 − Vds1)`
- Predicted error: 5.1% → Measured: 4.97% ✅

## Bias Conditions

| Parameter | M1 | M2 | Condition |
|-----------|-----|-----|-----------|
| Vgs | 0.659 V | 0.659 V | Same |
| Vth | 0.535 V | 0.535 V | Same |
| Vov | 0.123 V | 0.123 V | Same |
| Vds | 0.659 V | 1.800 V | Different |
| Region | Sat | Sat | OK |

- **Minimum Vout for saturation:** 0.12 V
- **Perfect match point:** Vout = 0.66 V (0% error)

## Tools Used

- **Xschem** — Schematic capture
- **ngspice 46** — Circuit simulation
- **SKY130A PDK** — Process Design Kit
- **Magic VLSI** — Layout (pending)
- **Netgen** — LVS verification (pending)

## Repository Structure

current_mirror_12_10_26/
├── 00_docs/ Design documentation (9 reports + plot)
├── 01_schematic/ Xschem schematic + netlist
├── 02_testbench/ Test benches
├── 03_simulation/ SPICE simulations (DC, OP, AC, Tran)
├── 04_sizing/ W/L sweep studies
├── 05_layout/ Magic layout (pending)
├── 06_drc/ DRC reports (pending)
├── 07_lvs/ LVS reports (pending)
├── 08_pex/ PEX extraction (pending)
├── 09_gds/ Final GDS (pending)
├── 10_archive/ Old versions
└── README.md
text


## Documentation Index

| File | Content |
|------|---------|
| 01_Design_Specification.md | Design targets & flow |
| 02_Hand_Calculation.md | W/L calculation |
| 03_Schematic_Design.md | Circuit topology |
| 04_OP_Analysis.md | Operating point data |
| 05_DC_Sweep_Analysis.md | Vout vs Iout curve |
| 06_L_Sweep_Comparison.md | L=1, 2, 4 µm study |
| 07_Results_Summary.md | Final spec vs achieved |
| 08_Bias_Conditions.md | Saturation condition |
| 09_CLM_Analysis.md | Lambda extraction |
| vout_sweep_L4.png | Vout sweep plot |

## How to Simulate

```bash
cd 01_schematic
ngspice current_mirror_schematic.spice

Verification Flow
Stage	Status
Schematic	✅ Done
Pre-Layout Simulation	✅ Done
OP Analysis	✅ Done
DC Sweep	✅ Done
L-Sweep Study	✅ Done
CLM Analysis	✅ Done
Layout Design	⏳ Pending
DRC	⏳ Pending
LVS	⏳ Pending
PEX	⏳ Pending
Post-Layout Simulation	⏳ Pending
GDS	⏳ Pending
Author

Md. Muntasir Fahad
Bangladesh Army University of Engineering and Technology (BAUET)
Course: Analog IC Design
