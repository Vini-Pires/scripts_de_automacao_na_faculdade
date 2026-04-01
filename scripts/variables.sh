#!/bin/bash

# Não pode ter espaços entre o sinal de igual (=)
export TESTE="RODANDO"

export _PASTA_SCRIPTS=$(pwd)/scripts
export _PASTA_CONFIGS=$(pwd)/configs
export _VSCODE=$_PASTA_CONFIGS/vscode

export _GIT_CONFIG="git config --global"
export NOME_GIT="Vinicius Pires | UTFPR"
export EMAIL_GIT="viniciuspires@alunos.utfpr.edu.br"

export _REGISTRO_ALUNO="$(whoami)"
export _HOME_PESSOAL="/media/$_REGISTRO_ALUNO/home"
export _KEYS_HOME="$_HOME_PESSOAL/configs/ssh"
export _KEYS_DEFAULT="$HOME/.ssh"
export _VSCODE_DEFAULT="$HOME/.config/Code/User"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export FONT_DIR="$HOME/.local/share/fonts"

echo "Variaveis globais prontas"
