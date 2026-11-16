use campuscloud;
print("--- AGREGACION: Conteo de servicios activos por categoria ---");
db.detalles_servicios.aggregate([
  { $match: { activo: true } },
  { $group: { _id: "$tipo_servicio", total_servicios: { $sum: 1 }, servicios: { $push: "$nombre" } } },
  { $sort: { total_servicios: -1 } }
]).forEach(printjson);
