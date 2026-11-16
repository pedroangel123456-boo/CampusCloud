CREATE CONSTRAINT estudiante_matricula IF NOT EXISTS FOR (e:Estudiante) REQUIRE e.matricula IS UNIQUE;
CREATE CONSTRAINT servicio_id IF NOT EXISTS FOR (s:Servicio) REQUIRE s.servicio_id IS UNIQUE;
CREATE CONSTRAINT curso_codigo IF NOT EXISTS FOR (c:Curso) REQUIRE c.codigo IS UNIQUE;
CREATE CONSTRAINT categoria_nombre IF NOT EXISTS FOR (cat:Categoria) REQUIRE cat.nombre IS UNIQUE;

MERGE (catIA:Categoria {nombre: "Computo Cientifico"})
MERGE (catAlm:Categoria {nombre: "Almacenamiento"})
MERGE (catLab:Categoria {nombre: "Laboratorio Virtual"})
MERGE (catDev:Categoria {nombre: "Desarrollo"})

MERGE (s1:Servicio {servicio_id: "SRV-101"}) SET s1.nombre = "JupyterHub GPU", s1.ram_gb = 32
MERGE (s2:Servicio {servicio_id: "SRV-102"}) SET s2.nombre = "JupyterHub Estandar", s2.ram_gb = 8
MERGE (s3:Servicio {servicio_id: "SRV-103"}) SET s3.nombre = "CampusObject Storage", s3.cuota_gb = 100
MERGE (s4:Servicio {servicio_id: "SRV-105"}) SET s4.nombre = "CyberRange Lab", s4.ram_gb = 16
MERGE (s5:Servicio {servicio_id: "SRV-106"}) SET s5.nombre = "GitCampus CI/CD", s5.runners = 2

MERGE (c1:Curso {codigo: "BDN-501"}) SET c1.nombre = "Bases de Datos en la Nube"
MERGE (c2:Curso {codigo: "IA-602"}) SET c2.nombre = "Aprendizaje Automatico"
MERGE (c3:Curso {codigo: "SEG-504"}) SET c3.nombre = "Seguridad en Redes"

MERGE (e1:Estudiante {matricula: "2024001"}) SET e1.nombre = "Angel Martinez", e1.carrera = "TI"
MERGE (e2:Estudiante {matricula: "2024002"}) SET e2.nombre = "Valeria Lopez", e2.carrera = "TI"
MERGE (e3:Estudiante {matricula: "2024003"}) SET e3.nombre = "Carlos Ruiz", e3.carrera = "Redes"

MERGE (s1)-[:PERTENECE_A]->(catIA)
MERGE (s2)-[:PERTENECE_A]->(catIA)
MERGE (s3)-[:PERTENECE_A]->(catAlm)
MERGE (s4)-[:PERTENECE_A]->(catLab)
MERGE (s5)-[:PERTENECE_A]->(catDev)

MERGE (s1)-[:DEPENDE_DE {tipo: "persistencia_datasets"}]->(s3)
MERGE (s2)-[:DEPENDE_DE {tipo: "persistencia_notebooks"}]->(s3)
MERGE (s4)-[:DEPENDE_DE {tipo: "repositorio_plantillas"}]->(s5)

MERGE (c1)-[:UTILIZA]->(s2)
MERGE (c1)-[:UTILIZA]->(s5)
MERGE (c2)-[:UTILIZA]->(s1)
MERGE (c3)-[:UTILIZA]->(s4)

MERGE (e1)-[:INSCRITO_EN]->(c1)
MERGE (e1)-[:INSCRITO_EN]->(c2)
MERGE (e2)-[:INSCRITO_EN]->(c2)
MERGE (e3)-[:INSCRITO_EN]->(c3)

MERGE (e1)-[:USA_SERVICIO {horas_mes: 18}]->(s2)
MERGE (e2)-[:USA_SERVICIO {horas_mes: 25}]->(s1)
MERGE (e3)-[:USA_SERVICIO {horas_mes: 14}]->(s4);
