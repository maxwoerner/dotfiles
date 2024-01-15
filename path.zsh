# Load Homebrew tools
# export PATH="/opt/homebrew/bin:$PATH"

# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Herd injected PHP binary.
export PATH="$HOME/Library/Application Support/Herd/bin/":$PATH
