cd ~/FPGA/data_compression/L1/tests/lz4_compress

source /tools/Xilinx/Vivado/2024.2/settings64.sh
source /tools/Xilinx/Vitis/2024.2/settings64.sh

export PLATFORM_REPO_PATHS=/opt/xilinx/platforms
export XPART=xc7z020clg484-1

# make clean
make run TARGET=csynth