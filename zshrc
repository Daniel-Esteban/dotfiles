plugins=(git docker)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Custom paths
export PATH=$PATH:$GOPATH/bin
export GOPATH=$HOME/go
export MYVIMRC=$HOME/.vimrc
export ZSH=$HOME/.oh-my-zsh

#Base 16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1"  ] && [ -s $BASE16_SHELL/profile_helper.sh  ] && eval "$($BASE16_SHELL/profile_helper.sh)"

source $ZSH/oh-my-zsh.sh
#PROMPT
PROMPT=$'%F{cyan}%m $(git_prompt_info)%F{yellow}%~\n%F{green}%#%F{white} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
