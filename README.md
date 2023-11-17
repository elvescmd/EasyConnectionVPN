
# Script de Conexão Automática ao OpenVPN

Este script Bash/Windows Batch automatiza o processo de conexão à VPN usando o OpenVPN. Ele é útil para conectar-se à VPN sem a necessidade de inserir manualmente as credenciais toda vez.

## Pré-requisitos

- [OpenVPN](https://openvpn.net/): Certifique-se de ter o OpenVPN instalado no seu sistema operacional. Consulte a seção de pré-requisitos no README para obter mais detalhes.

## Instalação do OpenVPN (Windows)

1. Baixe o instalador do OpenVPN no [site oficial](https://openvpn.net/community-downloads/).

2. Execute o instalador e siga as instruções de instalação.

3. Certifique-se de que o diretório de instalação do OpenVPN (`C:\Program Files\OpenVPN\bin`) esteja adicionado ao seu PATH do sistema para que o script possa encontrá-lo.

## Instalação do OpenVPN (Linux)

No Linux, você pode instalar o OpenVPN usando o gerenciador de pacotes da sua distribuição. Abaixo estão os passos para algumas distribuições comuns:

### Ubuntu/Debian:

```bash
sudo apt-get update
sudo apt-get install openvpn
```

## Uso

1. Clone este repositório:

   ```bash
   git clone https://github.com/elvescmd/EasyConnectionVPN.git
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd EasyConnectionVPN
   ```

3. Execute o script:

   - **Linux:**

     ```bash
     ./LinuxStart.sh
     ```

   - **Windows:**

     Execute o arquivo `WindowsStart.cmd` clicando duas vezes sobre ele.

4. Insira suas credenciais quando solicitado.

5. A VPN será estabelecida automaticamente.

## Configuração

- Edite as variáveis no script conforme necessário:

  - `ARQUIVO_OVPN`: Caminho para o arquivo .ovpn da VPN.
  - `USUARIO`: Seu nome de usuário.
  - `SENHA`: Sua senha.

## Notas

- **Segurança:** Certifique-se de proteger adequadamente seus scripts, especialmente se contiverem informações confidenciais como senhas.
- **Permissões:** No Linux, talvez seja necessário conceder permissões de execução ao script: `chmod +x LinuxStart.sh`.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas ou enviar solicitações de pull.

## Licença

Este projeto é licenciado sob a [Licença MIT](LICENSE).

