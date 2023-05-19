@echo off

sqlcmd -S DESKTOP-6VL52AU -U ftpuser  -P ftpuser  -d AdventureWorks2019  -s "," -W -Q "SELECT TOP 100 * FROM v_aggperson" -o "C:\Users\Jesus\Desktop\Dato\%date% v_aggperson.csv"

pause

ftp -i -n -s:enviar_ftp.txt

pause

