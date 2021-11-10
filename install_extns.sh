#!/usr/bin/bash

# ***********************************************************
# Replace <file_name>.txt with the actual name of the file 
# containing all the VS Code extensions
# ***********************************************************
file_of_extns="$USER/path/to/<file_name>.txt"

# ***********************************************************
# Check if the file is read correctly
# ***********************************************************
echo 'file name: ' $file_of_extns


# ***********************************************************
# Install the extensions 
# ***********************************************************
for extn in `cat $file_of_extns`
do
   echo $extn
  `code --install-extension --force $extn`
done
