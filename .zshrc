# Created by newuser for 5.8.1
#
autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[cyan]%}%n%{$fg[white]%}:%{$fg[green]%}%M%{$fg[yellow]%} pwd:(%d)%{$reset_color%}%b "

export VIMRC="/home/zi/.config/nvim/init.vim"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

alias restart="sudo shutdown now -r"
alias vim="nvim"
alias 4ed="/home/zi/dl/4coder/4ed"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word

# (cat ~/.cache/wal/sequences &)

# if [ "$TMUX" = "" ]; then tmux; fi

path+=('/home/zi/.emacs.d/bin')

wal_test() {
	backends=("colorz" "colorthief" "haishoku" "wal")

	for b in ${backends[@]}
	do
		echo "testing $b"
		wal -i $1 --backend $b
		sleep 2;
	done
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
