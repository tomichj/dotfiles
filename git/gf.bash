gf() {
  if [ -z "$1" ]; then
    # local branch=$1
    # git checkout -b $branch origin/$branch
    git checkout -b "$1" origin/"$1"
  fi
}
