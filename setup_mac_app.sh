#!/bin/bash

# Function to display an error message and exit
function error_exit {
    echo "Error: $1"
    exit 1
}

# Check if the .app location is provided as an argument
if [ $# -eq 0 ]; then
    error_exit "Please provide the path to the .app file as an argument."
fi

# Get the .app location from the argument
app_location="$1"

# Check if the .app file exists
if [ ! -d "$app_location" ]; then
    error_exit "The specified .app file does not exist: $app_location"
fi

# Get the absolute path of the .app location
app_location="$(cd "$(dirname "$app_location")" && pwd)/$(basename "$app_location")"

# Set the application name
app_name="key_input_tool"

# Set the path to the Contents folder
contents_folder="$app_location/Contents"

# Set the path to the MacOS folder
macos_folder="$contents_folder/MacOS"

# Set the path to the original executable
original_executable="$macos_folder/$app_name"

# Set the path to the new executable script
new_executable="$macos_folder/$app_name"

# Set the path to the renamed original executable
renamed_executable="$macos_folder/${app_name}_original"

# Check if the original executable exists
if [ ! -f "$original_executable" ]; then
    error_exit "The original executable does not exist: $original_executable"
fi

# Rename the original executable
mv "$original_executable" "$renamed_executable"

# Copy the launch script to the new executable
cp "./run.sh" "$new_executable"

# Make the new executable script executable
chmod +x "$new_executable"

echo "Application bundle setup completed successfully."