use AdventureWorks2019 

create role ftp_rol;
grant select on v_aggperson to ftp_rol;
exec sp_addrolemember'ftp_user','ftpuser';
