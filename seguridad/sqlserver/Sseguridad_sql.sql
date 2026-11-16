--
select SUSER_NAME () AS LoginActual;

-- verifica los privilegios sysadmin
SELECT IS_SRVROLEMEMBER('sysadmin') As [ESSysadmin]
go




-- consultar el estado sa 

select 
name, 
type_desc,
is_disabled
from sys.server_principals
where name = 'sa';

-- name -> nomvre del principal
-- type-desc -> tipo de principal, para este caso el principal es SQL_LOGIN
-- is_disable -> 0 significa habilitado y el 1 desabilitado


-- verificar la base de datos actual 
select 
DB_NAME() AS BaseActual;
go



-- consulta completa del contexto 
select
SUSER_NAME() AS LoginActual,
USER_NAME () As UsuarioBaseActual,
DB_NAME() AS BaseActual,
IS_SRVROLEMEMBER('sysadmin') AS EsSysadmin;


-- creacion y prueba de un administrador alternativo 


-- para hacer un login siempre debemos de estar en master 

USE master;
go
 -- crear login admin_sql

 CREATE LOGIN admin_sql
 WITH PASSWORD = 'Admin@cloud#12',
 CHECK_POLICY = ON;



