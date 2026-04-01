RegAlun=$(whoami)

homePessoal=/media/$RegAlun/home

# Verifica se o RA esta digitado corretamente
if [ ! -d $homePessoal ] ; then
  echo
  echo "==========================================="
  echo "Comando whoami não conseguiu coletar seu RA"
  echo "Registro de Aluno: $RegAlun ?"
  echo "==========================================="
  echo
  return 1
fi

sh key_ssh.sh
sh code_config.sh
sh cp_alias.sh
echo "Script Finalizado!"