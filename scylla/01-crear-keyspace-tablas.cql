CREATE KEYSPACE IF NOT EXISTS campuscloud_telemetria
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE campuscloud_telemetria;

-- Tabla 1: Serie temporal de consumo por servicio (Partition Key: servicio_id, Clustering Key: fecha_evento DESC)
CREATE TABLE IF NOT EXISTS metricas_servicios (
    servicio_id text,
    fecha_evento timestamp,
    cpu_porcentaje double,
    ram_usada_gb double,
    usuarios_activos int,
    estado_nodo text,
    PRIMARY KEY ((servicio_id), fecha_evento)
) WITH CLUSTERING ORDER BY (fecha_evento DESC);

-- Tabla 2: Auditoria de eventos por estudiante (Partition Key: matricula, Clustering Key: fecha_evento DESC)
CREATE TABLE IF NOT EXISTS bitacora_accesos (
    matricula text,
    fecha_evento timestamp,
    servicio_id text,
    accion text,
    ip_origen text,
    PRIMARY KEY ((matricula), fecha_evento)
) WITH CLUSTERING ORDER BY (fecha_evento DESC);

DESCRIBE TABLES;
