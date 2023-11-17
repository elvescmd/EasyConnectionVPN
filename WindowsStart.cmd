@echo off

set "ARQUIVO_OVPN=C:\vpn.ovpn"
set "USUARIO=usuario"
set "SENHA=senha"

(
  echo %USUARIO%
  echo %SENHA%
) > credentials.txt

"C:\Program Files\OpenVPN\bin\openvpn.exe" --config "%ARQUIVO_OVPN%" --auth-user-pass credentials.txt

rem Aguardar um tempo razoável para garantir que a conexão VPN esteja estabelecida antes de prosseguir
timeout /t 20 /nobreak > nul

rem Configurar manualmente o endereço IP da interface
netsh interface ip set address "Ethernet" static 172.25.0.6 255.255.255.224

del credentials.txt
