ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="af-magic"
# ZSH_THEME="robbyrussell"

# Useful plugins for Rails development with Sublime Text
plugins=(rbenv git node bundler macos rake ruby python gitfast last-working-dir common-aliases history-substring-search)

# my old settings:
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/ those upthere +
# plugins=(brew rbenv zsh-history-substring-search web-search rails)
# source $ZSH/oh-my-zsh.sh
# export PATH='/usr/local/bin:/usr/local/share:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/X11/bin:/usr/texbin:~/bin'
# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"


# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/antoine/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh

export EDITOR="cursor --wait"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh