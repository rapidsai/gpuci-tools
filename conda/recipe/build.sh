# Copyright (c) 2020, NVIDIA CORPORATION.

# Install gpuCI tools into conda env
mkdir -p ${PREFIX}/bin
cp -R ${SRC_DIR}/tools/* ${PREFIX}/bin/
