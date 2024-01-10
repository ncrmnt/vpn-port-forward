@ECHO OFF
title "vpn-port-forward"
set /p PIN=Second password (PIN): 
@REM docker-compose up --build --force-recreate --no-deps
docker-compose up
pause
