# VLSI Mustang Indicator

Mustang Indicator: CMOS FSMD for Sequential Turn Signal on a Ford Mustang

<img width="500" height="446" alt="Screenshot 2026-02-22 at 4 40 23 PM" src="https://github.com/user-attachments/assets/80257051-f9a2-492a-8c67-449fdbaeddba" />

This repository contains Verilog implementations for a sequential turn signal controller (similar to the Ford Mustang/Thunderbird) and other VLSI hardware design assignments.

## Project Structure

*   **Question_2 (Turn Signal FSM)**:
    *   `twoP_FSM.v`: Implementation of the Ford Mustang sequential turn signal logic using a two-phase clock FSM.
    *   Handles `LEFT`, `RIGHT`, and `BRAKE` inputs with priority logic.
    *   Includes simulation results from Questa and layout artifacts from Innovus.
*   **Question_3 (FSMD Template)**:
    *   A template for a Finite State Machine with Datapath (FSMD) implementation.
    *   Includes `fsm_controller.v`, `datapath.v`, and `fsmd_top.v`.

## Design Details

The turn signal controller uses a 4-bit state machine to manage the sequence of three LEDs on each side. It follows a two-phase clocking strategy (`clka`, `clkb`) common in VLSI designs to ensure stable state transitions.

### Features
- Sequential Left/Right turn signals.
- Brake override logic (solid lights).
- Fault detection (both signals active).
- Two-phase non-overlapping clock synchronization.

## Tools Used
- **QuestaSIM**: Logic Simulation.
- **Genus/Design Compiler**: RTL Synthesis.
- **Innovus**: Physical Design and Layout.
- **Irsim**: Switch-level simulation.
