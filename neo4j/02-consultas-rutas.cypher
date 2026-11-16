MATCH (c:Curso)-[:UTILIZA]->(s:Servicio)
RETURN c.codigo AS Codigo, c.nombre AS Curso, collect(s.nombre) AS ServiciosRequeridos;

MATCH path = (origen:Servicio)-[:DEPENDE_DE*1..2]->(destino:Servicio)
RETURN origen.nombre AS Servicio, [n IN nodes(path) | n.nombre] AS CadenaDependencia;

MATCH (e:Estudiante {matricula: "2024001"})-[:INSCRITO_EN]->(c:Curso)-[:UTILIZA]->(s:Servicio)
WHERE NOT (e)-[:USA_SERVICIO]->(s)
RETURN DISTINCT e.nombre AS Estudiante, s.nombre AS ServicioRecomendado, c.nombre AS PorElCurso;

MATCH (s:Servicio)-[:PERTENECE_A]->(cat:Categoria)
RETURN cat.nombre AS Categoria, count(s) AS TotalServicios, collect(s.nombre) AS Catalogo
ORDER BY TotalServicios DESC;
