# Bash Profile
This repo provides a collection of scripts that can be included as part of your `.bashrc` or `.zshrc` config.

## Setup
You can clone the project directly into the `$HOME/.bash` directory using the following command:

```bash
git clone https://github.com/dm0275/bash-profile.git $HOME/.bash
```
This ensure that the `$HOME/.bash` directory exists and that scripts are correctly sourced.

## Usage
To include the scripts in your `.bashrc` or `.zshrc`, you can just source all the script files with the following code snippet:

```bash
# Source script files
for script_file in $HOME/.bash/*; do
  source $script_file
done
```

This will loop through all files in the `.bash` directory (e.g., `$HOME/.bash/`) and source them into your shell session. This setup ensures that the scripts are loaded every time you start a new terminal session.
