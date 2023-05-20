create TABLESPACE trabajo01
datafile '$HOME/ejemplo/tbs_trabajo_01'
size 50M
AUTOEXTEND on next 10M
maxsize 100M;

create user ftpuser identified by 1234
default TABLESPACE trabajo01;

---- Roles

create role role_full;

---- Permisos 

grant create session, create table, insert any table to role_full;

GRANT ALL PRIVILEGES TO role_full;

----Asignar roles 

grant role_full to jabello;
