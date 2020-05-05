#!/bin/bash
# Copyright (c) 2020, NVIDIA CORPORATION.
####################################
# gpuci-tools run script for gpuCI #
####################################
set -ex

export PATH="/opt/conda/bin:$PATH"
source activate base
conda install -k conda-build conda-verify anaconda-client
conda build conda/recipe
anaconda -t ${MY_UPLOAD_KEY} upload -u ${CONDA_USERNAME:-gpuci} --label main --skip-existing /opt/conda/conda-bld/linux-64/gpuci-tools*.tar.bz2
