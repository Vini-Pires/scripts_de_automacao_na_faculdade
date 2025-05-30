#!bin/bash

echo 'export PATH="$PATH:$O_HOME_CONFIG/bin"' >>$HOME/.bashrc

source $HOME/.bashrc

sudo apt install $O_PACKGES

if [[ ! -d $HOME/.local/share/fonts ]]; then
  mkdir $HOME/.local/share/fonts
fi

cp $O_HOME_CONFIG/fonts -t $HOME/.local/share/fonts
fc-cache -f

if [[ ! -d $HOME/.local/share/man/man1 ]]; then
  mkdir -p $HOME/.local/share/man/man1
fi
if [[ ! -d $HOME/.local/share/bash-completion/completions ]]; then
  mkdir -p $HOME/.local/share/bash-completion/completions/
fi
cp $O_HOME_CONFIG/bash/autocomplete/*.bash -t $HOME/.local/share/bash-completion/completions/
cp $O_HOME_CONFIG/bash/fd.1 -t $HOME/.local/share/man/man1
