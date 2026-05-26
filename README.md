# ECC Scalar Multiplication Accelerator

## Project Overview
This project implements a simplified ECC (Elliptic Curve Cryptography) Scalar Multiplication Accelerator using Verilog HDL. The design performs arithmetic operations similar to ECC processing and is optimized for ASIC implementation using the Tiny Tapeout flow and Sky130 technology.

## Features
- 8-bit input processing
- Arithmetic acceleration logic
- ASIC-compatible RTL design
- Tiny Tapeout compatible
- OpenLane physical design flow support

## Inputs
- ui[7:0]  -> Input operand A
- uio[7:0] -> Input operand B

## Outputs
- uo[7:0] -> ECC processed output

## Technology Used
- Verilog HDL
- Tiny Tapeout
- OpenLane
- Sky130 PDK
- OpenROAD

## Author
PM Likhith Kumar
Prajwal T
