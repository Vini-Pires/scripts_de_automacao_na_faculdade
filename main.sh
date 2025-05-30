#!bin/bash

echo "iniciando script"

sh variables.sh

# Verifica se o RA esta digitado corretamente
if [ ! -d ${O_HOME} ]; then
  echo
  echo "==========================================="
  echo "Comando whoami não conseguiu coletar seu RA"
  echo "Registro de Aluno: $RegAlun ?"
  echo "==========================================="
  echo
  return 1
fi

# Incluir aq os arquivos de shell script
