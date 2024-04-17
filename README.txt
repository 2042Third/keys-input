On macos, after building, you should:

Open your application bundle in Finder by right-clicking on it and choosing "Show Package Contents".
Navigate to the Contents folder inside your application bundle.
Open the Info.plist file located in the Contents folder using a text editor or Xcode.
Locate the CFBundleExecutable key in the Info.plist file and change its value back to the original executable name (e.g., key_input_tool).
Save the changes to the Info.plist file.
Open the MacOS folder inside the Contents folder.
Rename the original executable (e.g., key_input_tool) to a different name (e.g., key_input_tool_original).
Create a new file named key_input_tool (or the same name as the original executable) in the MacOS folder and open it in a text editor.
Copy and paste the following content into the new key_input_tool file:
bash


Copy code
```
#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Set the path to your application's original binary executable
APP_BINARY="$SCRIPT_DIR/key_input_tool_original"

# Set any necessary environment variables
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$SCRIPT_DIR/../Frameworks"
export QT_EVENT_DISPATCHER_CORE_FOUNDATION=1
export QT_MAC_DISABLE_FOREGROUND_APPLICATION_TRANSFORM=1

# Launch the application
exec "$APP_BINARY" "$@"
```
Replace key_input_tool_original with the renamed original executable name.

Save the changes to the new key_input_tool file.
Open a terminal and navigate to the MacOS folder inside your application bundle.
Make the new key_input_tool file executable by running the following command:
bash


Copy code
chmod +x key_input_tool
Now, when you launch your application bundle, it will execute the new key_input_tool script, which sets up the necessary environment variables and then launches the original executable (key_input_tool_original) with the provided arguments.
