#!/bin/bash

. scripts/vars.sh

# Verificar condições de existencia
. $_PASTA_SCRIPTS/verify_RA.sh || exit 1
echo "Bem-vindo $_REGISTRO_ALUNO"

# Executar arquivos
. "$_PASTA_SCRIPTS/setup_keys.sh"
. "$_PASTA_SCRIPTS/setup_git.sh"
. "$_PASTA_SCRIPTS/setup_vscode.sh"
. "$_PASTA_SCRIPTS/install_fonts.sh"
. "$_PASTA_SCRIPTS/install_zsh.sh"

echo "===================="
echo "Instalação concluida"
echo "===================="
