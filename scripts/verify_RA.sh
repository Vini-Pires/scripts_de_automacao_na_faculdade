#!/bin/bash

if [ ! -d $_HOME_PESSOAL ] ; then
  echo
  echo "==========================================="
  echo "Comando whoami não conseguiu coletar seu RA"
  echo "Registro de Aluno: $_REGISTRO_ALUNO ?"
  echo "==========================================="
  echo
  return 1
fi
