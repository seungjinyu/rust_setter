# this script should be executed by sudo 

apt update -y && apt install -y \
    llvm \
    llvm-dev \
    llvm-runtime \
    build-essential \
    clang \
    libssl-dev \
    pkg-config \

sudo apt-add-repository -y "deb http://apt.llvm.org/mantic/ llvm-toolchain-mantic-18 main"
sudo apt-add-repository -y "deb-src http://apt.llvm.org/mantic/ llvm-toolchain-mantic-18 main"

wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc

# bpf linker 
apt update -y && apt install -y \
    llvm-18-dev \
    libclang-18-dev \ 
    libpolly-18-dev

# cc
apt install zlib1g-dev libzstd-dev
