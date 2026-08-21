# Verilog Digital Circuits

A collection of **Digital Logic Design circuits implemented in Verilog HDL**.
This repository contains Verilog source code and testbenches for basic digital circuits and combinational logic components.

## 📚 Circuits Included

* AND Gate
* Half Adder
* Full Adder
* 2-to-1 Multiplexer
* 4-to-1 Multiplexer

## 🛠️ Technologies Used

* **Verilog HDL**
* **Icarus Verilog** — Simulation
* **GTKWave** — Waveform Analysis

## 📂 Project Structure

```text
verilog-digital-circuits/
│
├── 📁 and/
│   ├── and_pralay.v
│   └── and_pralay_tb.v
│
├── 📁 half_adder/
│   ├── half_adder_pralay.v
│   └── half_adder_pralay_tb.v
│
├── 📁 full_adder/
│   ├── full_adder_pralay.v
│   └── full_adder_pralay_tb.v
│
├── 📁 mux_2to1/
│   ├── mux_2to1_pralay.v
│   └── mux_2to1_pralay_tb.v
│
├── 📁 mux_4to1/
│   ├── mux_4to1_pralay.v
│   └── mux_4to1_pralay_tb.v
│
├── 📄 .gitignore
├── 📄 README.md
└── 📄 Verilogs.pdf
```

## 🔬 Circuit Details

### AND Gate

Implements the basic **AND logic gate** using Verilog HDL.

**Inputs:**

* A
* B

**Output:**

* Y

---

### Half Adder

A **Half Adder** performs binary addition of two single-bit inputs.

**Inputs:**

* A
* B

**Outputs:**

* Sum
* Carry

---

### Full Adder

A **Full Adder** performs binary addition of three single-bit inputs, including a carry input.

**Inputs:**

* A
* B
* Carry-in

**Outputs:**

* Sum
* Carry-out

---

### 2-to-1 Multiplexer

A **2-to-1 Multiplexer** selects one of two input signals based on a select signal.

**Inputs:**

* I0
* I1
* Select

**Output:**

* Y

---

### 4-to-1 Multiplexer

A **4-to-1 Multiplexer** selects one of four input signals using two select lines.

**Inputs:**

* I0
* I1
* I2
* I3
* S0
* S1

**Output:**

* Y

## ▶️ Simulation

### Install Icarus Verilog

On Ubuntu/Debian:

```bash
sudo apt install iverilog
```

Verify the installation:

```bash
iverilog -V
```

### Compile a Design

For example, to compile the Half Adder:

```bash
iverilog -o half_adder.vvp half_adder_pralay.v half_adder_pralay_tb.v
```

### Run the Simulation

```bash
vvp half_adder.vvp
```

### View Waveforms

If the testbench generates a `.vcd` waveform file:

```bash
gtkwave half_adder.vcd
```

> Generated simulation files such as `.vvp` and `.vcd` are excluded from Git using `.gitignore`.

## 🧪 Testbenches

Each circuit contains a corresponding Verilog testbench used to verify its functionality.

```text
Design Module
      ↓
Testbench
      ↓
Icarus Verilog
      ↓
Simulation
      ↓
Waveform / Output
```

## 📖 Reference Material

The repository also contains:

**`Verilogs.pdf`**

This document contains the related Verilog/Digital Logic reference material for the project.

## 🎯 Purpose

This repository is intended for:

* Learning Verilog HDL
* Practicing Digital Logic Design
* Understanding combinational circuits
* Writing and testing Verilog modules
* Simulating digital circuits
* Analyzing simulation waveforms

## 👨‍💻 Author

**Pralay Naskar**

GitHub: [@pralaynaskar](https://github.com/pralaynaskar)

## 📄 License

This project is developed for **academic and educational purposes**.
