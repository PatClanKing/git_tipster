#!/bin/bash

# Define the alias and the command it represents
script_name=$(basename "$0")
new_alias="${script_name%.*}"


# Define the command to check the current Git branch
command_to_alias="\"git branch | grep '*' | cut -d ' ' -f 2\""

# Add the alias to the user's .bashrc file
echo "alias $new_alias=$command_to_alias" >> ~/.bashrc

# Reload the user's shell to make the alias immediately available
#source ~/.bashrc
exec bash

# Display a message indicating the alias has been added
echo "Alias '$new_alias' for '$command_to_alias' has been added to your system."
