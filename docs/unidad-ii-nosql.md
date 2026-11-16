# Unidad II: Persistencia Poliglota NoSQL en CampusCloud

Implementacion y validacion operativa de tres motores NoSQL complementarios desplegados mediante Docker Compose para la plataforma universitaria **CampusCloud**.

## 1. Arquitectura y Justificacion de Motores

| Motor | Paradigma NoSQL | Puerto | Caso de Uso en CampusCloud |
| :--- | :--- | :---: | :--- |
| **MongoDB** | Documental (BSON) | `27018` | Catalogo flexible de servicios (`detalles_servicios`), especificaciones tecnicas heterogeneas, arreglos de etiquetas y agregaciones. |
| **Neo4j** | Grafos | `7474` / `7687` | Grafo de relaciones entre `Estudiante`, `Curso`, `Servicio` y `Categoria`, dependencias (`DEPENDE_DE`) y motor de recomendacion. |
| **ScyllaDB** | Columnar Distribuido | `9042` | Series temporales de telemetria (`metricas_servicios`) y bitacora de eventos (`bitacora_accesos`) ordenados por marca de tiempo. |

## 2. Inventario de Scripts y Evidencias

- **`mongodb/`**: Scripts `.js` ejecutables (creacion de coleccion con indice unico, insercion, filtros sobre subdocumentos/arreglos, actualizacion, eliminacion y agregacion).
- **`neo4j/`**: Scripts `.cypher` (restricciones de unicidad, carga de nodos y relaciones, consultas de rutas multinivel y recomendacion).
- **`scylla/`**: Scripts `.cql` (keyspace `campuscloud_telemetria`, tablas con *Partition Key* y *Clustering Key* `DESC`, consultas por rango y CRUD).
- **`evidencias/unidad-ii/`**: Capturas de pantalla organizadas en `mongodb/`, `neo4j/` y `scylla/` que comprueban conexion, operaciones CRUD, persistencia tras reinicio y control de acceso.
