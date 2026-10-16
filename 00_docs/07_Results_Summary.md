# Simple Current Mirror — Results Summary

## Design
- Technology: SKY130A
- Devices: sky130_fd_pr__nfet_01v8
- Sizing: L = 4 um, W = 20 um (both M1, M2)
- Iref = 10 uA, VDD = 1.8 V

## Final Performance

| Spec | Target | Achieved | Status |
|------|--------|----------|--------|
| Iref | 10 uA | 10.00 uA | PASS |
| Mirror Ratio | 1:1 | 1:1.05 | CLOSE |
| Mirror Error | <5% | 4.97% | PASS |
| Rout | >100 kOhm | 2.44 MOhm | PASS |
| Min Vout (sat) | <0.3 V | 0.12 V | PASS |
| Region | Saturation | Saturation | PASS |

## Key Parameters
- VTH = 0.535 V
- Vov = 0.123 V
- Vgs = 0.659 V
- Vdsat = 0.123 V
- Lambda = 0.045 V^-1
- Early Voltage = 22.3 V

## Next Steps
1. Layout in Magic
2. DRC clean
3. LVS match
4. PEX extraction
5. Post-layout simulation
6. Comparison pre vs post layout
