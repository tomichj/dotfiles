if hash emacs 2>/dev/null; then
  export EDITOR=emacs
else
  export EDITOR=mg
fi
export USE_EDITOR="$EDITOR"
export VISUAL="$EDITOR"

export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

export PAGER=less

export LESS='--ignore-case --QUIET --raw-control-chars --no-init --quit-if-one-screen'
export LESSHISTFILE="$XDG_CACHE_HOME/lesshst"
export LESSSECURE=1

# Fire up z
if [[ -f "/opt/homebrew/etc/profile.d/z.sh" ]]; then
	. /opt/homebrew/etc/profile.d/z.sh
fi
