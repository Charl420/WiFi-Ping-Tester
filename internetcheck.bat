@ECHO OFF
set IPADDRESS=xxx.xxx.x.x
set INTERVAL=10
:PINGINTERVAL
ping %IPADDRESS% -n 1 >> logs.txt
echo Logged time = %time% %date%>> logs.txt
ping %IPADDRESS% -n 1
echo Logged time = %time% %date%
timeout %INTERVAL%
GOTO PINGINTERVAL
