# ===========================================================================================
# Editor to use 
# ===========================================================================================
export EDITOR="vim"
export VISUAL="vim"



# ===========================================================================================
# Enable VIM Key Bindings 
# ===========================================================================================
# fish_vi_key_bindings

 

# ============================================================================================
# To get proper colors
# ============================================================================================
export TERM="xterm-256color"



#==============================================================================================
# ***************** Alias *******************
# =============================================================================================
# Aliases to edit config files
alias i3c="vim ~/.config/i3/config"
alias pc="vim ~/.config/polybar/config"



# Upgrade
alias upgrade="yay -Syyuyuu"



# Changing ls to exa 
alias ls="exa -l --color=always --group-directories-first"



# Changing Grep to show color output
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"



# Confirm before overwriting something
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"
# =============================================================================================



# Supress Welcome message
set fish_greeting 



# colorscript
colorscript random

# Dotfiles Alias
alias dotfile="/usr/bin/git --git-dir=/home/pyroot/dotfiles --work-tree=/home/pyroot"
