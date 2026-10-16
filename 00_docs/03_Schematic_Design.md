# Schematic Design — Simple Current Mirror

## Circuit Topology
- M1: Diode-connected NMOS (gate = drain)
- M2: Mirror NMOS (gate = M1's gate)
- Both sources to GND

## Netlist Nodes
- net1: M1 gate + M1 drain + M2 gate (VGS node)
- net2: VDD (1.8 V)
- net3: M2 drain (Vout node)
- 0: GND

## Devices
- Device: sky130_fd_pr__nfet_01v8
- M1: L=4um, W=20um
- M2: L=4um, W=20um

## Sources
- V1: VDD = 1.8 V
- Iref: 10 uA (VDD -> net1)
- V2: Vout (net3 -> GND), swept 0 to 1.8 V

## Operation
1. Iref forces 10 uA through M1
2. M1 self-adjusts VGS to 0.659 V
3. M2 sees same VGS -> mirrors 10 uA
