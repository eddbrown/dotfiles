export PATH="$HOME/.npm-packages/bin:$PATH"
export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "
export EDITOR="/usr/bin/atom"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source base16 256 colourspace script.
if [[ -s "$HOME/.colours/base16-shell/base16-eighties.dark.sh" ]]; then
  source "$HOME/.colours/base16-shell/base16-eighties.dark.sh"
fi

# Aliases
alias g="git"
alias m="rbenv shell 2.2.2 && mux"
alias t="tmux"
alias be="bundle exec"
alias a="tmux attach -t"

alias nom="rm -rf node_modules && npm cache clean && npm install"
alias bom="rm -rf bower_components && bower cache clean && bower install"
alias nombom="nom && bom"
alias srspec="spring rspec"
alias gadp="git add -p"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gpom="git pull origin master"
alias grim="git rebase -i master"
alias grm="git rebase master"
alias gpo="git push origin"
alias fpush="git push -f origin"
eval "$(direnv hook zsh)"
