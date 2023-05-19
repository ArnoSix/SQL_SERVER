
set constraints all deferred;

insert into ADVENTUREWORK2019 (ID, PRODUCTO, NUMERO_PRODUCTO, UBICACION, DESCRIPCION)
select * from external('(select id, producto, numero_producto, ubicacion, descripcion from productos.csv)' 
type csv

default directory /u01/userhome/oracle
field terminated by ','
optionally englosed by '"' 
reject rows with all null fields 

)
reject limit unlimited;

set constraints all immediate;





