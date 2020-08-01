# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by kuro for 5.8
source <(antibody init)

export TERM="xterm-256color"
alias ls="ls --color=always"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000

#Autocompletion
autoload -Uz compinit
compinit

antibody bundle < ~/.config/antibody/zsh_plugins.txt

[[ ! -f ~/.config/antibody/p10k.zsh ]] || source ~/.config/antibody/p10k.zsh

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
