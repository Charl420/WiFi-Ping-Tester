@ECHO OFF
set IPADDRESS=192.168.0.1
set INTERVAL=600
:PINGINTERVAL
ping %IPADDRESS% -n 1 >> logshome.txt
echo Logged time = %time% %date%>> logshome.txt
ping %IPADDRESS% -n 1
echo Logged time = %time% %date%
timeout %INTERVAL%
GOTO PINGINTERVAL
