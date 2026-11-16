use campuscloud;
db.detalles_servicios.insertMany([
  {
    servicio_id_sql: "SRV-101",
    nombre: "JupyterHub GPU",
    tipo_servicio: "computo_cientifico",
    activo: true,
    etiquetas: ["ia", "python", "notebooks", "gpu"],
    especificaciones_tecnicas: { vcpu: 8, ram_gb: 32, acelerador: "NVIDIA T4" },
    politica_uso: { max_horas_sesion: 6, auto_apagado_min: 30 }
  },
  {
    servicio_id_sql: "SRV-102",
    nombre: "JupyterHub Estandar",
    tipo_servicio: "computo_cientifico",
    activo: true,
    etiquetas: ["ciencia-datos", "python", "r"],
    especificaciones_tecnicas: { vcpu: 4, ram_gb: 8, acelerador: "ninguno" },
    politica_uso: { max_horas_sesion: 12, auto_apagado_min: 45 }
  },
  {
    servicio_id_sql: "SRV-103",
    nombre: "CampusObject Storage",
    tipo_servicio: "almacenamiento",
    activo: true,
    etiquetas: ["s3-compatible", "backups", "datasets"],
    especificaciones_tecnicas: { cuota_base_gb: 100, protocolos: ["HTTPS", "S3API"], versionado: true }
  },
  {
    servicio_id_sql: "SRV-104",
    nombre: "CampusArchive Cold",
    tipo_servicio: "almacenamiento",
    activo: true,
    etiquetas: ["historico", "tesis", "bajo-costo"],
    especificaciones_tecnicas: { cuota_base_gb: 500, tiempo_recuperacion_min: 15 }
  },
  {
    servicio_id_sql: "SRV-105",
    nombre: "CyberRange Lab",
    tipo_servicio: "laboratorio_virtual",
    activo: true,
    etiquetas: ["ciberseguridad", "redes", "kali", "docker"],
    especificaciones_tecnicas: { vcpu: 6, ram_gb: 16, redes_aisladas: 3 },
    imagenes_disponibles: ["Kali-2026", "Ubuntu-Server-24.04", "pfSense"]
  },
  {
    servicio_id_sql: "SRV-106",
    nombre: "GitCampus CI/CD",
    tipo_servicio: "desarrollo",
    activo: true,
    etiquetas: ["git", "pipelines", "devops"],
    especificaciones_tecnicas: { runners_concurrentes: 2, minutos_mes: 2000 }
  },
  {
    servicio_id_sql: "SRV-107",
    nombre: "LegacyFTP Campus",
    tipo_servicio: "almacenamiento",
    activo: false,
    etiquetas: ["obsoleto", "ftp"],
    especificaciones_tecnicas: { cuota_base_gb: 10, cifrado: false }
  }
]);
print("Documentos insertados. Total en coleccion:", db.detalles_servicios.countDocuments());
