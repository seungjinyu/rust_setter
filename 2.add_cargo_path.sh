#!/bin/sh

# Define the path to be added
CARGO_PATH="$HOME/.cargo/bin"
PROFILE_FILE="$HOME/.profile"

# Function to add the path to the profile file
add_to_profile() {
    if ! grep -q "$CARGO_PATH" "$PROFILE_FILE"; then
        echo "export PATH=\"$CARGO_PATH:\$PATH\"" >> "$PROFILE_FILE"
        echo "Added $CARGO_PATH to $PROFILE_FILE"
    else
        echo "Path $CARGO_PATH is already in $PROFILE_FILE"
    fi
}

# Add path to .profile
add_to_profile

# Apply the changes to the current session
export PATH="$CARGO_PATH:$PATH"
echo "Path $CARGO_PATH added to the current session"
