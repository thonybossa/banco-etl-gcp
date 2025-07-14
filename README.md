# Solución Técnica - Pipeline de Datos Bancarios en GCP

Este repositorio contiene la implementación de un pipeline ETL/ELT para una entidad bancaria interesada en analizar el comportamiento de sus clientes sobre productos financieros (cuentas de ahorro, tarjetas y créditos), utilizando servicios de Google Cloud Platform (GCP).

## 🧱 Arquitectura Implementada

- **Ingesta**: Cloud Storage como Data Lake (raw layer)
- **Transformación**: BigQuery SQL + limpieza y enriquecimiento
- **Modelo Dimensional**: Esquema en estrella con 4 dimensiones y tabla de hechos
- **Monitoreo**: Métricas en Cloud Monitoring + alertas personalizadas
- **Visualización**: Dashboard en Looker Studio
- **CI/CD**: Pipeline con Cloud Build y despliegue automatizado

## 📁 Estructura del Repositorio

