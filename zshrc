# Load Antigen
source $HOME/.config/antigen.zsh
#source <(antibody init)

# Load alias 
source $HOME/alias.zsh

# Load Shell themes = Base 16 shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1"  ] && \
	    [ -s "$BASE16_SHELL/profile_helper.sh"  ] && \
	            eval "$("$BASE16_SHELL/profile_helper.sh")"

    
# Load the oh-my-zsh's library
antigen use oh-my-zsh


# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish-like auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

# Extra zsh completions
antigen bundle zsh-users/zsh-completions


# Load the theme
#antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure
antigen theme denysdovhan/spaceship-prompt

# Tell antigen that you're done
antigen apply


