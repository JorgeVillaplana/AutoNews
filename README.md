# AutoNews
AutoNews es un proyecto experimental cuyo objetivo es recopilar noticias desde distintas fuentes, procesarlas y generar resúmenes estructurados, personalizados y periódicos, pensados para ser consumidos en poco tiempo.

El foco del proyecto es la **comodidad y la inmediatez**: reducir el ruido informativo y entregar contenido útil de forma clara y accesible.

---

## Problema que aborda

La mayoría de las newsletters y agregadores de noticias:
- saturan al usuario con contenido repetido o poco relevante
- requieren demasiado tiempo de lectura
- no separan bien la adquisición de la información de su entrega final

AutoNews intenta atacar ese problema creando una **cadena clara**:
entrada de noticias → procesamiento → síntesis → entrega limpia al usuario.

---

## Propuesta

AutoNews ofrece un:

> **resumen personalizado, categorizado, estructurado, periódico y consumible en poco tiempo**

La personalización y los canales de entrega evolucionarán progresivamente, pero el principio rector es siempre el mismo: menos fricción, más valor.

---

## MVP (Minimum Viable Product)

### Qué hace el MVP
- Recopila noticias desde varias fuentes (inicialmente newsletters por email).
- Almacena los correos originales para trazabilidad.
- Extrae y normaliza el contenido.
- Evita duplicados mediante hashes.
- Genera resúmenes individuales y un resumen global.

### Qué **no** hace el MVP
- No tiene interfaz gráfica.
- No expone aún una API pública.
- No implementa personalización avanzada por usuario.

---

## Estado del proyecto

Proyecto en fase temprana (0.1).

Actualmente:
- Estructura del repositorio definida.
- Base de datos inicial creada en PostgreSQL.
- Sistema de adquisición por email en preparación.
- Pendiente de implementar el primer script de ingesta IMAP → base de datos.

---

## Tecnologías previstas

- Python
- PostgreSQL
- Docker
- Procesamiento de texto y LLMs para clasificación y resumen
- Canales de entrega futuros (Texto, audio, etc.)

---

## Licencia

Este proyecto se distribuye bajo la licencia **GNU Affero General Public License v3.0 (AGPL-3.0)**.

El uso comercial o privativo requiere autorización explícita del autor.
