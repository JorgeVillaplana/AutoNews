Este archivo es considerado el estado actual del proyecto (Project State / Canonical Conext)

*Este archivo **se sobreescribe**, no se versiona como histórico. Es el “estado actual del mundo”.*

---

## PROYECTO

**Nombre:** Autonews  
**Tipo:** Plataforma de síntesis de noticias  
**Estado:** MVP en definición funcional, implementación pendiente

---

## OBJETIVO

Reducir la sobrecarga informativa ofreciendo un **resumen personalizado, categorizado, estructurado y periódico**, consumible en poco tiempo.

El foco está en **comodidad, inmediatez y bajo esfuerzo cognitivo**, orientado a hábitos de consumo rápidos.

---

## PROBLEMA QUE RESUELVE

- Demasiadas fuentes de información.
    
- Poco tiempo para leer todo.
    
- Dificultad para extraer lo relevante de forma sistemática.
    
- Canales tradicionales (email, web) saturados o ruidosos.
    

---

## PROPUESTA DE VALOR

- Síntesis inteligente de múltiples fuentes.
    
- Organización por categorías y relevancia.
    
- Entrega periódica, no continua.
    
- Formato pensado para consumo rápido.
    
- Separación clara entre ingestión de datos y entrega al usuario.
    

---

## PRINCIPIOS CLAVE (NO NEGOCIABLES)

- **El texto es la fuente canónica del contenido.**
    
- Audio u otros formatos son derivados posteriores.
    
- Accesibilidad: el contenido debe poder leerse siempre.
    
- Menos de 3–4 interacciones para llegar al contenido.
    
- El MVP evita complejidad prematura (bots, scraping avanzado, ML pesado).
    

---

## INGESTIÓN DE CONTENIDO

- **Canal:** Email
    
- **Origen:** Newsletters suscritas a una cuenta dedicada (Gmail).
    
- **Gestión:** Thunderbird como visor y control de volumen.
    
- **Objetivo técnico:** Extraer correos, normalizar contenido y almacenarlo.
    

El email **no es un canal de entrega al usuario**, solo infraestructura.

---

## ENTREGA AL USUARIO (MVP)

- **Formato:** Texto
    
- **Canal:** Por decidir (criterio principal: baja fricción y estabilidad).
    
- **Audio:** Fuera del MVP, previsto para fase posterior.
    

---

## MVP FUNCIONAL (DEFINICIÓN ACTUAL)

1. Recoger noticias de varias fuentes (vía email).
    
2. Agrupar noticias relacionadas.
    
3. Clasificarlas por categoría.
    
4. Generar:
    
    - resumen por noticia
        
    - resumen global periódico
        
5. Entregar el resumen global en **texto** por un canal limpio.
    

---

## ESTADO TÉCNICO ACTUAL

- Docker configurado.
    
- Contenedor con PostgreSQL operativo.
    
- Base de datos creada (3 tablas iniciales).
    
- Herramientas listas:
    
    - Python, FastAPI (previsto)
        
    - VS Code
        
    - DBeaver
        
    - Git (repo creado en GitHub)
        

No hay aún pipeline funcional extremo a extremo.

---

## BLOQUEO IDENTIFICADO

- Se diseñó infraestructura antes de cerrar un flujo mínimo de valor.
    
- Falta un primer resultado visible (aunque sea tosco).
    
- El siguiente paso debe cerrar un pipeline completo, no añadir arquitectura.
    

---

## PRÓXIMO PASO CLARO (ACTUAL)

Implementar un script simple que:

- lea correos de **una newsletter** vía IMAP,
    
- extraiga metadatos y cuerpo,
    
- los guarde en la base de datos.
    

Sin clasificación, sin resumen, sin ML.

---

## RESTRICCIONES REALES

- Tiempo limitado.
    
- Energía irregular.
    
- Tendencia a la parálisis por sobre-diseño.
    
- Necesidad de resultados visibles rápidos para mantener motivación.
    

---

## NOTAS ABIERTAS

- Scraping directo de webs considerado para el futuro.
    
- Telegram y audio previstos como evolución, no como base.
    
- La validación de utilidad precede a la sofisticación técnica.
    

---

# 🧠 Cómo usar este archivo (muy importante)

- **Se actualiza**, no se adorna.
    
- Si algo deja de ser cierto, se borra.
    
- Antes de retomar el proyecto tras una pausa:
    
    - usar este archivo como contexto.

Esto **sustituye a la memoria implícita** y evita repetir discusiones ya cerradas.