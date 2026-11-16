use campuscloud;
print("--- FILTRO 1: Computo cientifico con >= 16 GB RAM (subdocumento) ---");
db.detalles_servicios.find(
  { tipo_servicio: "computo_cientifico", "especificaciones_tecnicas.ram_gb": { $gte: 16 } },
  { _id: 0, servicio_id_sql: 1, nombre: 1, especificaciones_tecnicas: 1 }
).forEach(printjson);

print("--- FILTRO 2: Servicios activos con etiqueta 'ia' o 'devops' (arreglo) ---");
db.detalles_servicios.find(
  { activo: true, etiquetas: { $in: ["ia", "devops"] } },
  { _id: 0, servicio_id_sql: 1, nombre: 1, etiquetas: 1 }
).forEach(printjson);

print("--- FILTRO 3: Almacenamiento con cuota mayor a 50 GB ---");
db.detalles_servicios.find(
  { tipo_servicio: "almacenamiento", "especificaciones_tecnicas.cuota_base_gb": { $gt: 50 } },
  { _id: 0, servicio_id_sql: 1, nombre: 1, "especificaciones_tecnicas.cuota_base_gb": 1 }
).forEach(printjson);
