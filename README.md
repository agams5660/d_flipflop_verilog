# Positive Edge Triggered D Flip-Flop in Verilog

## Overview

This project implements a positive-edge triggered D Flip-Flop using Verilog HDL and verifies its behavior using a testbench.

The output (`Q`) updates only on the rising edge of the clock.

## Truth Table

| Clock | D | Q (Next State) |
|------|---|-----------------|
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |
| No rising edge | X | No Change |

## Files

- `d_flipflop.v` – RTL design
- `tb_d_flipflop.v` – Testbench

## How to Run

```bash
iverilog -o sim d_flipflop.v tb_d_flipflop.v
vvp sim
gtkwave d_flipflop.vcd
```

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Author

Agam Sharma