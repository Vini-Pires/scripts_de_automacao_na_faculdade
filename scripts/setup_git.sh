#!/bin/bash


$_GIT_CONFIG user.name "$NOME_GIT"
$_GIT_CONFIG user.email "$EMAIL_GIT"

$_GIT_CONFIG init.defaultBranch main

$_GIT_CONFIG pull.rebase false # Usara merge para lidar com conflitos

$_GIT_CONFIG core.editor "nano"
$_GIT_CONFIG core.autocrlf input
$_GIT_CONFIG core.sshCommand "ssh $ARGS_CHAVES -o IdentitiesOnly=yes"

$_GIT_CONFIG alias.st status
$_GIT_CONFIG alias.sw switch
$_GIT_CONFIG alias.br branch
$_GIT_CONFIG alias.cm commit
$_GIT_CONFIG alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

echo "Git configurado com sucesso"
