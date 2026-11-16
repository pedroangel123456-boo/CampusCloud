USE campuscloud_telemetria;

INSERT INTO metricas_servicios (servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, usuarios_activos, estado_nodo)
VALUES ('SRV-101', '2026-11-16 10:00:00+0000', 68.5, 24.2, 14, 'OPTIMO');

INSERT INTO metricas_servicios (servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, usuarios_activos, estado_nodo)
VALUES ('SRV-101', '2026-11-16 10:15:00+0000', 84.1, 29.8, 19, 'CARGA_ALTA');

INSERT INTO metricas_servicios (servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, usuarios_activos, estado_nodo)
VALUES ('SRV-102', '2026-11-16 10:00:00+0000', 32.0, 5.4, 22, 'OPTIMO');

INSERT INTO metricas_servicios (servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, usuarios_activos, estado_nodo)
VALUES ('SRV-105', '2026-11-16 10:30:00+0000', 55.4, 11.0, 9, 'OPTIMO');

INSERT INTO bitacora_accesos (matricula, fecha_evento, servicio_id, accion, ip_origen)
VALUES ('2024001', '2026-11-16 09:50:00+0000', 'SRV-102', 'INICIO_NOTEBOOK', '192.168.10.15');

INSERT INTO bitacora_accesos (matricula, fecha_evento, servicio_id, accion, ip_origen)
VALUES ('2024001', '2026-11-16 10:20:00+0000', 'SRV-101', 'ENTRENAMIENTO_GPU', '192.168.10.15');

INSERT INTO bitacora_accesos (matricula, fecha_evento, servicio_id, accion, ip_origen)
VALUES ('2024002', '2026-11-16 10:05:00+0000', 'SRV-101', 'INICIO_NOTEBOOK', '192.168.10.22');

SELECT * FROM metricas_servicios;
SELECT * FROM bitacora_accesos;
