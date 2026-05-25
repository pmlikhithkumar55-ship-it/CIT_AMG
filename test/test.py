import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def ecc_accelerator_test(dut):

    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.ena.value = 1
    dut.rst_n.value = 0

    await Timer(10, units="ns")

    dut.rst_n.value = 1

    # Test Case 1
    dut.ui_in.value = 5
    dut.uio_in.value = 3

    await Timer(20, units="ns")

    print("Output 1:", dut.uo_out.value)

    # Test Case 2
    dut.ui_in.value = 10
    dut.uio_in.value = 2

    await Timer(20, units="ns")

    print("Output 2:", dut.uo_out.value)

    # Test Case 3
    dut.ui_in.value = 15
    dut.uio_in.value = 5

    await Timer(20, units="ns")

    print("Output 3:", dut.uo_out.value)
