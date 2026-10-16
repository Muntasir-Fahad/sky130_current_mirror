# Channel Length Modulation (CLM) Analysis

## What is CLM?
In saturation, as Vds increases:
- Depletion region around drain widens
- Effective channel length decreases
- Current increases slightly

## Model
Id = (1/2) * unCox * (W/L) * Vov^2 * (1 + lambda * Vds)

## Lambda Extraction

### L = 1 um
- Iout/Iref = 10.83/10.00 = 1.083
- Vds1 = 0.70 V, Vds2 = 1.80 V
- lambda = 0.080 V^-1
- VA = 1/lambda = 12.5 V

### L = 2 um
- Iout/Iref = 10.79/10.00 = 1.079
- lambda = 0.075 V^-1
- VA = 13.3 V

### L = 4 um
- Iout/Iref = 10.497/10.00 = 1.0497
- lambda = 0.045 V^-1
- VA = 22.3 V

## Trend
- lambda decreases with L (longer channel = less CLM)

## Impact on Mirror Error
Error = lambda * (Vds2 - Vds1)
- L=4um: 0.045 * (1.8 - 0.66) = 5.1%
- Matches simulated 4.97%
