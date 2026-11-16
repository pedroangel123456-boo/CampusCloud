use campuscloud;
print("--- ANTES DE ACTUALIZAR (SRV-102) ---");
printjson(db.detalles_servicios.findOne({ servicio_id_sql: "SRV-102" }, { _id: 0 }));

db.detalles_servicios.updateOne(
  { servicio_id_sql: "SRV-102" },
  { $set: { "especificaciones_tecnicas.ram_gb": 16 }, $push: { etiquetas: "ram-ampliada" } }
);

print("--- DESPUES DE ACTUALIZAR (SRV-102) ---");
printjson(db.detalles_servicios.findOne({ servicio_id_sql: "SRV-102" }, { _id: 0 }));
