#!/bin/bash

mkdir -p $_VSCODE_DEFAULT

ln -sf "$_VSCODE"/settings.json "$_VSCODE_DEFAULT"/settings.json
ln -sf "$_VSCODE"/keybindings.json "$_VSCODE_DEFAULT"/keybindings.json

if [ -f "$_VSCODE/extensions.txt" ]; then
	cat "$_VSCODE/extensions.txt" | xargs -L 1 code --install-extension
else
	echo "Aviso: extensions.txt não encontrado em $_VSCODE"
	return 1
fi

echo "VS Code configurado com sucesso"
