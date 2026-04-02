#!/bin/bash

mkdir -p "$_PASTA_FONT"

FONTS_INSTALLED=false

for URL in "${_FONT_URL[@]}"; do
	# Extrai o nome do arquivo da URL e arruma os espaços
	FONT_FILE=$(basename "$URL" | sed 's/%20/ /g')

	if [ ! -f "$_PASTA_FONT/$FONT_FILE" ]; then
		echo "📥 Baixando $FONT_FILE..."
		curl -fSL -o "$_PASTA_FONT/$FONT_FILE" "$URL"
		FONTS_INSTALLED=true
	else
		echo "✔ $FONT_FILE já está instalada."
	fi
done

if [ "$FONTS_INSTALLED" = true ]; then
	echo "Atualizando cache de fontes do sistema..."
	fc-cache -f "$_PASTA_FONT"
	echo "Todas as fontes foram instaladas!"
else
	echo "Todas as fontes já estavam configuradas."
fi
