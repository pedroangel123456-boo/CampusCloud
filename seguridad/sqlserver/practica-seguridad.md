# administracion de seguridad  en sql

# fundamentos
| conceptos | Nivel | Proposito | Ejemplo |
|---|---|---|---|
|**login**| instancia de sql server | autenticar una identidad ante el Servidor | `admin_sql` |
|**User**| Base de Datos | Representa la identidad ante el servidor | `dbo` |
|**Rol de Servidor**| Instancia | Agrupa privilegios administrados a nivel de servidor | `sysadmin` |
|**Base de Datos Actual**| Sesion | Determinar el contexto de ejecucion de una consulta | `master` |

# 1. Diagnostico de la conexion Administrativa









`CREATE LOGIN admin:_sql`:crea una identidad que puede autentificarsse ante la instancia
`WITH PASSWORD`:DEFINE UNA DONTRASEÑA de auntentificacion SQL SERVER
`CHECK_POLICY = ON`:Solicita aplicar la politica de contraseñas correspondiemntes cuando


## dsabilitacion controlada

  **desavilitacion controlada de sa**

   select
 name,
 type_desc,
 is_disabled
 from sys.server_principals
 where name ='sa';
 go


 **desavilita sa**

 alter login sa disable;
