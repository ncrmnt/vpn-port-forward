@ECHO OFF
title "vpn-port-forward"

:loop
set /p PIN=Second password (PIN): 
@REM docker-compose up --build --force-recreate --no-deps
docker-compose up
goto loop
