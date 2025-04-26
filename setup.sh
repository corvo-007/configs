#!/usr/bin/env bash

cd "$HOME" || { echo 'Failed to change to HOME directory'; exit 1; }

echo -n 'Writing .bash_aliases... '
if curl -s 'https://raw.githubusercontent.com/corvo-007/configs/refs/heads/main/.bash_aliases' -o .bash_aliases; then
    echo Done
else
    echo Failed
fi

echo -n 'Writing .gitconfig... '
if curl -s 'https://raw.githubusercontent.com/corvo-007/configs/refs/heads/main/.gitconfig' -o .gitconfig; then
    echo Done
else
    echo Failed
fi

echo -n 'Writing .vimrc... '
if curl -s 'https://raw.githubusercontent.com/corvo-007/configs/refs/heads/main/.vimrc' -o .vimrc; then
    echo Done
else
    echo Failed
fi

echo -n 'Updating .bashrc... '
echo >> .bashrc
if curl -s 'https://raw.githubusercontent.com/corvo-007/configs/refs/heads/main/.bashrc' >> .bashrc; then
    echo Done
else
    echo Failed
fi
