@echo off
:loop
timeout 10 > Nul
if exist C:%HOMEPATH%\.ipfs\subscription.key (
echo "File exists"
set /p value=<C:%HOMEPATH%\.ipfs\subscription.key
echo "%value%"
curl https://solarbankersico.com/SolarNode_Service.svc/JSON/CheckSubscriptionValid/%value%>output.txt
set /p result=<output.txt
if %result%==false ( solaripfs shutdown 
)
 ) else ( 
solaripfs shutdown
)
goto loop
