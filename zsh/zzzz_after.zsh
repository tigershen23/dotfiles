# Path modifications
export NVM_DIR="$HOME/.nvm"

# Path
export PATH=/Users/tiger/.local/bin:$PATH

# Prompt
prompt pure

# Python
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Load any custom after code
if [ -d $HOME/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.zsh.after/)" ]; then
    for config_file ($HOME/.zsh.after/*.zsh) source $config_file
  fi
fi
