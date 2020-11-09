#!/usr/bin/env bash

DOTFILES="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )/home"

echo "Installing dotfiles from $DOTFILES"

for FILE in `ls -A $DOTFILES`; do

  SOURCE="$DOTFILES/$FILE"
  DEST="$HOME/$( basename $FILE )"

  if [ ! -e "$DEST" ]; then
    echo "Linking $SOURCE -> $DEST"
    ln -s "$SOURCE" "$DEST"
  fi
done
