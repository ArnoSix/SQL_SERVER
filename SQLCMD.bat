@echo off

sqlcmd -S PC-RAYZEN -U Jesus  -P jesus1234  -d AdventureWorks2019  -s "," -W -Q "SELECT TOP 100 * FROM Vista_Prueba" -o "C:\Users\Jesus\OneDrive\Escritorio\%date% output.csv"
