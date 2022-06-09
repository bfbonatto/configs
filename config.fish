
# Fish shell config

### PATH CONFIG
set -e fish_user_paths	# Remove path
set -U fish_user_paths $HOME/.pyenv/shims $HOME/.local/bin /usr/local/bin $HOME/.emacs.d/bin /usr/local/opt/llvm/bin /usr/local/opt/gcc/bin $HOME/go/bin $HOME/.cargo/bin $fish_user_paths # Set path again


### EXPORT ###
set fish_greeting
set TERM "xterm-256color"

### MANPAGER
### "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### VI MODE
function fish_user_key_bindings
	fish_vi_key_bindings
end

### AUTOCOMPLETE AND COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### ALIASES ###
alias ..='cd ..'
alias ...='cd ../..'

alias vim='nvim'
alias ls='exa -G'
alias la='exa -a -G'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias doomsync='$HOME/.emacs.d/bin/doom sync'
alias doomenv='$HOME/.emacs.d/bin/doom env'
alias doomdoctor='$HOME/.emacs.d/bin/doom doctor'
alias doomupgrade='$HOME/.emacs.d/bin/doom upgrade'


### EXTRA ###
# github token
#set GIT_API_TOKEN 

pyenv init - | source

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/bfbonatto/.ghcup/bin $PATH # ghcup-env
