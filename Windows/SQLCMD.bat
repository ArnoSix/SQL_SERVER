@echo off

sqlcmd -S PC-RAYZEN -U ftpuser  -P ftpuser  -d AdventureWorks2019  -s "," -W -Q "SELECT TOP 100 * FROM v_aggperson" -o "C:\Users\Jesus\OneDrive\Escritorio\%date% output.csv"
