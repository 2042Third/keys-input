#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Set the path to your application's original binary executable
APP_BINARY="$SCRIPT_DIR/key_input_tool_original"

# Set any necessary environment variables
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$SCRIPT_DIR/../Frameworks"

# Launch the application with the necessary environment variables
/usr/bin/env QT_EVENT_DISPATCHER_CORE_FOUNDATION=1 QT_MAC_DISABLE_FOREGROUND_APPLICATION_TRANSFORM=1 "$APP_BINARY" "$@"