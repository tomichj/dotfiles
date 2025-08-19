#export BREW_CASK_BIN="/Volumes/w1/Applications"
#export HOMEBREW_CASK_OPTS="--appdir=${BREW_CASK_BIN}"

export BREW_CASK_BIN="/Applications"
export HOMEBREW_CASK_OPTS=""

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:${BREW_CASK_BIN}:$PATH"
if [ -d ${BREW_CASK_BIN}/Postgres.app/Contents/Versions/latest/bin ]; then
    export PATH="${BREW_CASK_BIN}/Postgres.app/Contents/Versions/latest/bin:${PATH}"
fi

