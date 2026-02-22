# VLSI Mustang Indicator

Mustang Indicator: CMOS FSMD for Sequential Turn Signal on a Ford Mustang

This repository contains Verilog implementations to build a sequential turn signal controller typically found on the Ford Mustang with two variations:
1. Finite State Machine Implementation
2. Finite State Machine With Datapath Implementation


## Design Details

The turn signal controller I've designed uses a 4-bit state machine to manage the sequence of three LEDs on each side. It follows a two-phase clocking strategy (`clka`, `clkb`) used in a lot of  VLSI designs to allow stable state transitions.

### Features
- Sequential Left/Right turn signals.
- Brake override logic (solid lights) and Idle State!
- Fault detection (both signals active).
- Two-phase non-overlapping clock synchronization.


I've included all the necessary instructions to run these modules on your own.
You should ensure the following tools are available to compile correctly:
- QuestaSim
- Genus or Design Compiler
- Innovus
- Irsim

Feel free to reach out to sr185@rice.edu with any questions

