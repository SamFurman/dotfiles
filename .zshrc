# opam configuration
[[ ! -r /Users/sfurman/.opam/opam-init/init.zsh ]] || source /Users/sfurman/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

alias g="git"
alias gl="g pull"
alias gp="g push"
alias gst="g status"
alias gfa="g fetch --all"

# user-friendly ls
# https://github.com/eza-community/eza
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

# user-friendly cat
# https://github.com/sharkdp/bat
alias cat="bat"

alias cd="z"
alias zz="z -"

eval "$(zoxide init zsh)"

# pull in git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
# setup prompt

# use brew clang instead of apple clang
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
