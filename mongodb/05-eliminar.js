use campuscloud;
print("--- ANTES DE ELIMINAR (SRV-107) ---");
print("Total documentos:", db.detalles_servicios.countDocuments());
printjson(db.detalles_servicios.findOne({ servicio_id_sql: "SRV-107" }, { _id: 0 }));
printjson(db.detalles_servicios.deleteOne({ servicio_id_sql: "SRV-107" }));
print("--- DESPUES DE ELIMINAR ---");
print("Total documentos:", db.detalles_servicios.countDocuments());
