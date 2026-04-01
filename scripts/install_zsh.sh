#!/bin/bash

# Define onde estão os seus arquivos do repositório

p10k_git=https://github.com/romkatv/powerlevel10k.git
syntax_high=https://github.com/zsh-users/zsh-syntax-highlighting.git

# 1. Instalar o Zsh
if ! command -v zsh &> /dev/null; then
	sudo apt update && sudo apt install -y zsh
fi

# 2. Instalar Oh My Zsh (Modo Silencioso)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3. Baixar Tema e Plugins

# Powerlevel10k
[ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ] && git clone --depth=1  "$ZSH_CUSTOM/themes/powerlevel10k"

# zsh-autosuggestions
[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] && git clone $p10k_git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# zsh-syntax-highlighting
[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ] && git clone $syntax_high "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"


# 4. Criar Links Simbólicos

# Backup do .zshrc padrão do Oh My Zsh (caso ele tenha criado um)
[ -f "$HOME/.zshrc" ] && rm "$HOME/.zshrc"

# Cria os links apontando para a sua pasta clonada
ln -sf "$_PASTA_CONFIGS/zshrc" "$HOME/.zshrc"
ln -sf "$_PASTA_CONFIGS/aliases" "$HOME/.aliases"
ln -sf "$_PASTA_CONFIGS/p10k.zsh" "$HOME/.p10k.zsh"


# 5. Definir Zsh como padrão
if [ "$SHELL" != "$(which zsh)" ]; then
	echo "Trocando o shell padrão para Zsh..."
	chsh -s $(which zsh)
fi

echo "Terminal configurado! Reinicie a sessão para ver as mudanças."
