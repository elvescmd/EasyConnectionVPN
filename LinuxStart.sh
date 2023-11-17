#!/bin/bash

ARQUIVO_OVPN="/home/user/vpn.ovpn"

USUARIO="usuario"
SENHA="senha"

CREDENCIAIS_TEMP=$(mktemp)
echo -e "$USUARIO\n$SENHA" > "$CREDENCIAIS_TEMP"

chmod 600 "$CREDENCIAIS_TEMP"

sudo openvpn --config "$ARQUIVO_OVPN" --auth-user-pass "$CREDENCIAIS_TEMP"
rm -f "$CREDENCIAIS_TEMP"
