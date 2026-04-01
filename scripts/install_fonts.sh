#!/bin/bash

mkdir -p "$FONT_DIR"

# URLs da MesloLGS NF (Para o Terminal) e Fira Code (Para o Editor)
FONTS=(
	# MesloLGS NF
	"https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
	"https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
	"https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
	"https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"

	# Fira Code
	"https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Regular.ttf"
	"https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Bold.ttf"
	"https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Medium.ttf"
	"https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Retina.ttf"
)

FONTS_INSTALLED=false

for FONT_URL in "${FONTS[@]}"; do
	# Extrai o nome do arquivo da URL e arruma os espaços
	FONT_FILE=$(basename "$FONT_URL" | sed 's/%20/ /g')

	if [ ! -f "$FONT_DIR/$FONT_FILE" ]; then
		echo "📥 Baixando $FONT_FILE..."
		curl -fSL -o "$FONT_DIR/$FONT_FILE" "$FONT_URL"
		FONTS_INSTALLED=true
	else
		echo "✔ $FONT_FILE já está instalada."
	fi
done

if [ "$FONTS_INSTALLED" = true ]; then
	echo "Atualizando cache de fontes do sistema..."
	fc-cache -f "$FONT_DIR"
	echo "Todas as fontes foram instaladas!"
else
	echo "Todas as fontes já estavam configuradas."
fi
