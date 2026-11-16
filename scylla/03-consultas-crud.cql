USE campuscloud_telemetria;

-- Consulta 1: Historial de metricas ordenado por tiempo para SRV-101
SELECT servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, estado_nodo
FROM metricas_servicios
WHERE servicio_id = 'SRV-101';

-- Consulta 2: Rango temporal de accesos del estudiante 2024001
SELECT matricula, fecha_evento, servicio_id, accion
FROM bitacora_accesos
WHERE matricula = '2024001' AND fecha_evento >= '2026-11-16 10:00:00+0000';

-- Consulta 3: Agregacion sobre particion SRV-101
SELECT COUNT(*) AS lecturas_srv101, AVG(cpu_porcentaje) AS cpu_promedio, MAX(ram_usada_gb) AS pico_ram_gb
FROM metricas_servicios
WHERE servicio_id = 'SRV-101';

-- Actualizacion y eliminacion puntual por llave primaria completa
UPDATE metricas_servicios
SET estado_nodo = 'ESTABILIZADO', cpu_porcentaje = 61.0
WHERE servicio_id = 'SRV-101' AND fecha_evento = '2026-11-16 10:15:00+0000';

DELETE FROM metricas_servicios
WHERE servicio_id = 'SRV-105' AND fecha_evento = '2026-11-16 10:30:00+0000';

SELECT * FROM metricas_servicios;
