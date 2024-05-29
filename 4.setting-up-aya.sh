NAME=$1
PROGRAM_TYPE=$2

# Check if exactly two arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Exactly two arguments are required. Exiting the script."
    exit 1
fi

# Rest of the script
echo "Two arguments provided: $1 and $2. Continuing the script."

rustup install stable 
rustup toolchain install nightly --component rust-src

# Get the system architecture
ARCH=$(uname -m)

# # Check if the architecture is x86_64
# if [ "$ARCH" = "x86_64" ]; then
#     echo "System architecture is x86_64. Installing bpf-linker with default features."
#     cargo install bpf-linker
# else
#     echo "System architecture is not x86_64. Installing bpf-linker without default features."
#     cargo install --no-default-features bpf-linker
# fi

cargo install cargo-generate

cargo generate --name $NAME -d program_type=$PROGRAM_TYPE https://github.com/aya-rs/aya-template
