# gpuci-tools

# This repository is no longer maintained and should not be used. https://github.com/rapidsai/gha-tools is the replacement.


User tools for use within the gpuCI environment


## Install gpuCI tools

### `wget` method
```sh
# as root
wget https://github.com/rapidsai/gpuci-tools/releases/latest/download/tools.tar.gz -O - | tar -xz -C /usr/local/bin

# as non-root
wget https://github.com/rapidsai/gpuci-tools/releases/latest/download/tools.tar.gz -O - | sudo tar -xz -C /usr/local/bin
```

### `conda` method w/o mamba
```sh
conda install -c gpuci gpuci-tools
```

### `conda` method w/ mamba
```sh
conda install -c gpuci -c conda-forge gpuci-tools mamba
```

### `curl` method
```sh
curl -s https://raw.githubusercontent.com/rapidsai/gpuci-tools/main/install.sh | bash
source ~/.bashrc
cd ~
```

### `git` method
```sh
git clone https://github.com/rapidsai/gpuci-tools.git .gpuci
chmod +x .gpuci/tools/*
export PATH="$PWD/.gpuci/tools:$PATH"
```
