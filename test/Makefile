TOPLEVEL_LANG = verilog

VERILOG_SOURCES = $(PWD)/../src/src/tt_um_ecc_accelerator.v \
                  $(PWD)/../src/src/ecc_core.v \
                  $(PWD)/../src/src/ecc_serial_ctrl.v

TOPLEVEL = tt_um_ecc_accelerator
MODULE = test

SIM = icarus

include $(shell cocotb-config --makefiles)/Makefile.sim
