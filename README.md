# Scripts de Automação para UTFPR

Este repositório contém um script de automação para configurar rapidamente meu ambiente de desenvolvimento em máquinas acadêmicas. O objetivo é transformar um sistema "padrão" em um ambiente produtivo, personalizado e pronto para codar em poucos minutos.

## 🎯 Objetivos Principais
* **Agilidade:** Reduzir o tempo de configuração manual de horas para minutos.
* **Padronização:** Garantir que as ferramentas e atalhos sejam os mesmos em qualquer máquina.
* **Estética e UX:** Interface de terminal aprimorada para facilitar a leitura e navegação.

---

## ✅ To-Do List de Implementação

### 🐚 Shell & Terminal
- [x] Instalar o **Zsh** como shell padrão.
- [x] Instalar o **Oh My Zsh** para gerenciamento de plugins.
- [x] Configurar o tema **Powerlevel10k** (p10k).
- [x] Instalar plugins essenciais:
    - [ ] `zsh-autosuggestions`
    - [ ] `zsh-syntax-highlighting`
- [x] Importar arquivo `.zshrc` personalizado.

### 🔧 Git & Segurança
- [x] Configurar `user.name` e `user.email`.
- [x] Definir editor padrão para mensagens de commit.
- [x] **Documentação SSH:** Criar instrução/atalho sobre a localização da chave:
    > 🔑 As chaves SSH ficam localizadas em: `~/.ssh/id_rsa.pub`

### 💻 Visual Studio Code
- [x] Sincronizar/Importar `settings.json`.
- [x] Configurar `keybindings.json` (atalhos personalizados).
- [x] Lista de extensões recomendadas:
    - [x] *Language Packs* (Python, C/C++, Java).
    - [x] Temas e Ícones.

---

## 🛠️ Como usar
> [!IMPORTANT]
> Antes de rodar, garanta que você tem permissões de execução.

```bash
chmod +x setup.sh
./setup.sh
```

---

## 📂 Estrutura de Pastas Sugerida
* `/configs`: Arquivos `.json` e `.zshrc`.
* `/scripts`: Scripts shell divididos por categoria (ex: `install_vscode_ext.sh`).
* `setup.sh`: Script mestre que executa todas as etapas.

---

### Dica de Ouro para o VS Code:
Para facilitar seu script, você pode exportar suas extensões atuais com o comando:
`code --list-extensions > extensions.txt`

E no script de instalação, usar:
`cat extensions.txt | xargs -L 1 code --install-extension`
