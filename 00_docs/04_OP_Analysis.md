# Operating Point Analysis — Simple Current Mirror

## Final Design
- L = 4 um, W = 20 um (both M1, M2)
- Iref = 10 uA
- VDD = 1.8 V
- Vout = 1.8 V

## M1 (Reference, Diode-Connected)

| Parameter | Value |
|-----------|-------|
| Id        | 10.00 uA |
| Vgs       | 0.6586 V |
| Vds       | 0.6586 V (= Vgs) |
| Vth       | 0.5351 V |
| Vov       | 0.1235 V |
| gm        | 144.1 uS |
| gds       | 0.496 uS |
| Vdsat     | 0.1234 V |
| Region    | Saturation |

## M2 (Mirror)

| Parameter | Value |
|-----------|-------|
| Id        | 10.497 uA |
| Vgs       | 0.6586 V |
| Vds       | 1.7999 V |
| Vth       | 0.5351 V |
| Vov       | 0.1235 V |
| gm        | 148.9 uS |
| gds       | 0.410 uS |
| Vdsat     | 0.1234 V |
| Region    | Saturation |

## Key Results

| Metric | Value |
|--------|-------|
| Mirror error | 4.97% |
| Rout (M2)    | 2.44 MOhm |
| Min Vout for saturation | 0.12 V |
| Lambda (CLM) | 0.045 V^-1 |
| Early Voltage | 22.3 V |

## Observations
1. Both transistors in saturation
2. Vgs perfectly matched (0.6586 V)
3. Vds mismatch (0.66 vs 1.80) causes 5% error
4. CLM effect visible but reduced with L=4um
