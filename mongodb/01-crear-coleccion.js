use campuscloud;
db.createCollection("detalles_servicios");
db.detalles_servicios.createIndex({ servicio_id_sql: 1 }, { unique: true });
print("Base 'campuscloud' y coleccion 'detalles_servicios' creadas correctamente.");
