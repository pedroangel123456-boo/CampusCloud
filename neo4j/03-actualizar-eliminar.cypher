MATCH (s:Servicio {servicio_id: "SRV-102"})
RETURN s.servicio_id AS ID, s.nombre AS Servicio, s.ram_gb AS RAM_Antes;

MATCH (s:Servicio {servicio_id: "SRV-102"})
SET s.ram_gb = 16, s.ultima_revision = "2026-11-16"
RETURN s.servicio_id AS ID, s.nombre AS Servicio, s.ram_gb AS RAM_Despues, s.ultima_revision AS Revision;

CREATE (tmp:Servicio {servicio_id: "SRV-999", nombre: "Servicio Temporal Prueba"})
RETURN tmp.servicio_id AS NodoTemporalCreado;

MATCH (tmp:Servicio {servicio_id: "SRV-999"})
DETACH DELETE tmp;

MATCH (s:Servicio)
RETURN count(s) AS TotalServiciosFinales;
