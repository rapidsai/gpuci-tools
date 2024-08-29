#!/bin/bash
# Copyright (c) 2020, NVIDIA CORPORATION.
####################################
# gpuci-tools run script for gpuCI #
####################################
set -ex

export HOME=${WORKSPACE}
export PATH="/opt/conda/bin:$PATH"
source activate base

ARCH=$(uname -m)
if [ "${ARCH}" = "x86_64" ]; then
  ARCH_DIR="linux-64"
elif [ "${ARCH}" = "aarch64" ]; then
  ARCH_DIR="linux-aarch64"
else
  echo "ERROR: Unsupported arch: ${ARCH}"
  exit 1
fi

conda config --set ssl_verify false
conda install -k conda-build conda-verify anaconda-client
conda build conda/recipe

pkgs_to_upload=$(find "/opt/conda/conda-bld/${ARCH_DIR}" -name "gpuci-tools*.conda" -o -name "gpuci-tools*.tar.bz2")
anaconda -t "${MY_UPLOAD_KEY}" upload -u "${CONDA_USERNAME:-gpuci}" --label main --skip-existing "${pkgs_to_upload}"
