#!bin/bash

# Verifica se exite a pasta .ssh na home e cria se não existir
if [ ! -d $O_DEFAULT_SSH ]; then
  mkdir $O_DEFAULT_SSH
fi

# Verifica se ha chaves sendo armazenadas na sua .ssh remota
if [ -z "$(ls $O_HOME_SSH)"]; then
  echo ""
  echo "Não ha chaves armazenadas em $O_HOME_SSH"
  echo "Crie uma chave com o comando ssh-keygen"
  echo ""
  return 1
fi

# Caso não haja uma pasta .ssh na home do linux ira criar uma
if [ ! -d $O_DEFAULT_SSH ]; then
  mkdir $O_DEFAULT_SSH
fi

# Caso o diretorio do linux .ssh não esteja vazio alterar permissões para que a copia de arquivos aconteça sem problemas
if [ -n "$(ls -A $O_DEFAULT_SSH)"]; then
  chmod 664 $O_DEFAULT_SSH
fi

chmod 764 $O_DEFAULT_SSH
# Copia as chaves da sua .ssh remota para a .ssh home
cp $O_HOME_SSH/* -t $O_DEFAULT_SSH
# Altera as permissões de todos os arquivos dentro da .ssh do linux para que somente quem criou possa visualizar
chmod 600 $O_DEFAULT_SSH/*
# Altera as permissões das chaves publicas para q sejam visiveis a todos os usuarios
chmod 664 $O_DEFAULT_SSH/*.pub
chmod 664 $O_DEFAULT_SSH/know*
echo "Chaves copiadas com sucesso para $O_DEFAULT_SSH"
