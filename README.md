# 🔢 MOD-12 Up/Down Counter (Verilog)

## 📌 Overview

This project implements a **MOD-12 Up/Down Counter** using Verilog/SystemVerilog.
The counter cycles through values **0 to 11** and supports both incrementing and decrementing modes based on a control signal.

---

## ⚙️ Features

* Counts from **0 → 11 (MOD-12)**
* Supports **Up and Down counting**
* **Asynchronous active-low reset (`reset_n`)**
* Clean and synthesizable design
* Simple and readable testbench
* Waveform generation using `.vcd`

---

## 🧠 Functionality

| Signal    | Description                    |
| --------- | ------------------------------ |
| `clk`     | Clock input                    |
| `reset_n` | Active-low reset               |
| `up_down` | Mode select (1 = Up, 0 = Down) |
| `count`   | 4-bit output (0 to 11)         |

---

### 🔼 UP Counting (`up_down = 1`)

0 → 1 → 2 → ... → 11 → 0 → ...

### 🔽 DOWN Counting (`up_down = 0`)

0 → 11 → 10 → ... → 1 → 0 → ...

---

## 📂 Project Structure

```
├── design.sv        // Counter design
├── testbench.sv     // Testbench
├── dump.vcd         // Waveform file (generated after simulation)
└── README.md
```
---

## 🧪 Testbench Details

* Clock generated using `always #5 clk = ~clk`
* Reset applied at the beginning
* Uses `repeat` statements for stimulus
* `$monitor` prints simulation results
* `$dumpfile` and `$dumpvars` generate waveform

---

## 📈 Expected Results

* Counter increments from **0 to 11** in UP mode
* Counter decrements from **11 to 0** in DOWN mode
* Proper wrap-around behavior:

  * `11 → 0` (UP)
  * `0 → 11` (DOWN)

---

## 💡 Key Concepts

* Sequential logic design
* Modulo-N counters
* Asynchronous reset handling
* Simulation and waveform analysis

---


