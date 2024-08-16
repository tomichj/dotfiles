export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if [ -d /Applications/Postgres.app/Contents/Versions/latest/bin ]; then
    export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:${PATH}"
fi
