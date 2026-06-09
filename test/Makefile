# Makefile for cocotb + Icarus Verilog
# Usage:
#   make          - run all tests
#   make clean    - remove simulation artefacts

# ── Simulator ─────────────────────────────────────────────────────────────────
SIM       = icarus
TOPLEVEL_LANG = verilog

# ── DUT sources ───────────────────────────────────────────────────────────────
# List every .v file the top-level depends on.
VERILOG_SOURCES  = ../src/PWM_Analyser.v
VERILOG_SOURCES += ../src/freq_counter.v
VERILOG_SOURCES += ../src/duty_cycle_counter.v
VERILOG_SOURCES += ../src/SevenSegmentDecoder.v
VERILOG_SOURCES += ../src/falling_edge_detect.v
VERILOG_SOURCES += ../src/rising_edge_detect.v

# ── Cocotb config ─────────────────────────────────────────────────────────────
TOPLEVEL  = PWM_Analyser           # must match the module name in your RTL
MODULE    = test_pwm_analyser      # Python file name (without .py)

# ── Include cocotb's own Makefile rules ───────────────────────────────────────
include $(shell cocotb-config --makefiles)/Makefile.sim
