# gpuci-tools [![Build Status](https://gpuci.gpuopenanalytics.com/buildStatus/icon?job=gpuci%2Fconda%2Fgpuci-tools)](https://gpuci.gpuopenanalytics.com/job/gpuci/job/conda/job/gpuci-tools/) [![Build Status](https://gpuci.gpuopenanalytics.com/buildStatus/icon?subject=build-aarch64&job=gpuci%2Fconda%2Fgpuci-tools-aarch64)](https://gpuci.gpuopenanalytics.com/job/gpuci/job/conda/job/gpuci-tools-aarch64/) [![Anaconda-Server Badge](https://anaconda.org/gpuci/gpuci-tools/badges/platforms.svg)](https://conda.anaconda.org/gpuci/gpuci-tools) [![Anaconda-Server Badge](https://anaconda.org/gpuci/gpuci-tools/badges/downloads.svg)](https://anaconda.org/gpuci/gpuci-tools) [![Anaconda-Server Badge](https://anaconda.org/gpuci/gpuci-tools/badges/installer/conda.svg)](https://conda.anaconda.org/gpuci/gpuci-tools)


User tools for use within the gpuCI environment


## Install gpuCI tools

### `conda` method w/o mamba
```
conda install -c gpuci gpuci-tools
```

### `conda` method w/ mamba
```
conda install -c gpuci -c conda-forge gpuci-tools mamba
```

### `curl` method
```
curl -s https://raw.githubusercontent.com/rapidsai/gpuci-tools/main/install.sh | bash
source ~/.bashrc
cd ~
```

### `git` method
```
git clone https://github.com/rapidsai/gpuci-tools.git .gpuci
chmod +x .gpuci/tools/*
export PATH="$PWD/.gpuci/tools:$PATH"
```
