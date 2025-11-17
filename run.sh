# #!/usr/bin/env bash
# # Robust MCP server launcher script for Linux

# # Move to the directory containing this script
# cd "$(dirname "$0")" || {
#   echo "Failed to change directory to script location" >&2
#   exit 1
# }

# # Run the MCP server via uv
# exec uv run main.py



#!/usr/bin/env bash
# Debugging MCP server launcher script

# echo "Running run.sh script..."

# # Ensure the correct environment is inherited
# export PATH=$PATH

# # Log the environment for debugging purposes
# echo "Current environment variables:"
# env

# # Print the current directory for confirmation
# echo "Current directory: $(pwd)"

# # Change to the directory of this script
# cd "$(dirname "$0")" || {
#   echo "Failed to change directory to script location" >&2
#   exit 1
# }

# # Print the current directory after cd
# echo "Changed to directory: $(pwd)"

# # Run the MCP server via uv
# exec uv run main.py



#!/usr/bin/env bash
# Debugging MCP server launcher script

# Ensure the correct environment is inherited
# export PATH=$PATH:/home/f/.local/bin  # Add the path where uv is installed

# # Log the environment for debugging purposes to stderr
# echo "Current environment variables:" >&2
# env >&2

# # Print the current directory for confirmation to stderr
# echo "Current directory: $(pwd)" >&2

# # Change to the directory of this script
# cd "$(dirname "$0")" || {
#   echo "Failed to change directory to script location" >&2
#   exit 1
# }

# # Print the current directory after cd
# echo "Changed to directory: $(pwd)" >&2

# # Run the MCP server via uv
# exec uv run main.py



#!/usr/bin/env bash
# Debugging MCP server launcher script for Cloud Desktop

# Ensure the correct environment is inherited
# export PATH=$PATH

# # Structured JSON output to stdout
# echo '{"status": "starting", "message": "Running run.sh script..."}'

# # Log the environment for debugging purposes to stderr in JSON format
# echo '{"status": "debug", "message": "Current environment variables:", "env":' "$(env)" '}'

# # Print the current directory for confirmation to stderr in JSON format
# echo '{"status": "debug", "message": "Current directory: $(pwd)"}'

# # Change to the directory of this script
# cd "$(dirname "$0")" || {
#   echo '{"status": "error", "message": "Failed to change directory to script location"}'
#   exit 1
# }

# # Print the current directory after cd
# echo '{"status": "debug", "message": "Changed to directory: $(pwd)"}'

# # Run the MCP server via uv and ensure output is in JSON format
# exec uv run main.py



#!/usr/bin/env bash
# MCP server launcher script with correct environment for Cloud Desktop

# Explicitly set PATH so uv can be found
export PATH=$PATH:/home/f/.local/bin

# Ensure the correct environment is inherited
# Log environment for debugging purposes to stderr
echo '{"status": "debug", "message": "Current environment variables:", "env":' "$(env)" '}' >&2

# Change to the directory of this script
cd "$(dirname "$0")" || {
  echo '{"jsonrpc": "2.0", "error": {"code": -32603, "message": "Failed to change directory"}, "id": null}' >&2
  exit 1
}

# Print the current directory after cd
echo '{"status": "debug", "message": "Changed to directory: $(pwd)"}' >&2

# Run the MCP server via uv
exec uv run main.py
