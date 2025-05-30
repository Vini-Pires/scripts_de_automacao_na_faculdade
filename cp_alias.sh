# copia as configurações do bash pra home

cp $O_HOME_CONFIG/bash/bash* -t $HOME

if [ $? -ne 0 ]; then
  echo "Erro ao copiar arquivos bash pra $HOME $?"
  return 1
fi

echo "configurações bash exportadas com sucesso"
