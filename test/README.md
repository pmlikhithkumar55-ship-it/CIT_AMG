# ECC Accelerator Testbench

This folder contains the simulation and verification files for the ECC Scalar Multiplication Accelerator project.

## Files

- tb.v → Verilog testbench
- test.py → Cocotb/Python verification script
- tb.gtkw → GTKWave configuration
- Makefile → Simulation automation

## Verification

The design is verified using:
- Verilog simulation
- Cocotb test environment
- Waveform analysis

## Inputs
- ui[7:0] : Operand A
- uio[7:0] : Operand B

## Outputs
- uo[7:0] : ECC processed output
