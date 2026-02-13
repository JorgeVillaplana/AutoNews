# Conceptos a tener en cuenta
## 🔹 **RSS**

Formato estandarizado que permite suscribirte a contenido nuevo de una web.

Ejemplo mental:  
Es como “seguir” un blog, pero en vez de emails o notificaciones, recibes un pequeño archivo XML que lista sus últimas noticias.

Sirve para:

*   Obtener titulares + links + descripción automáticamente.
*   Evitar scrapear.

Es de lo más eficiente para recolectar noticias.

* * *

## 🔹 **Atom Feeds**

Es como RSS, pero **más moderno**, con una estructura ligeramente distinta.  
Funciona igual para tu caso: suscripción automática a contenido.

Muchas webs ofrecen RSS _o_ Atom.

* * *

## 🔹 **IMAP**

Es un **protocolo para acceder al correo** desde programas.

Ejemplo:  
Outlook, Thunderbird y Gmail Web usan IMAP por debajo para leer tu bandeja, mover emails, etc.

Lo usarías para:

*   Crear una cuenta de correo solo para newsletters.
*   Conectarte vía IMAP y descargar los emails automáticamente.
*   Extraer sus contenidos para procesarlos.

Muy útil para recibir contenido sin depender de RSS.

* * *

## 🔹 **Parser**

Un parser es simplemente un **programa que interpreta y convierte un formato** en algo manejable.

Ejemplos:

*   Parser HTML → convierte HTML en un árbol para que extraigas texto.
*   Parser XML → te permite leer un feed RSS fácilmente.

En tu caso:

*   Parser de feeds (RSS/Atom)
*   Parser de email (HTML → texto)
*   Parser de webs cuando scrapear

* * *

## 🔹 **Scraping**

Proceso automático para **leer una página web como lo haría un navegador** y extraer lo que necesitas.

Herramientas típicas:

*   `BeautifulSoup`
*   `lxml`
*   `playwright` o `selenium` (cuando la web usa mucho JS)

Se usa cuando:

*   No hay RSS
*   No mandan newsletters
*   Pero tú igual quieres coger sus noticias

Scraping = último recurso (más frágil, más mantenimiento).

* * *

## 🔹 **Modelo ML (Machine Learning)**

Un Modelo ML es un algoritmo que **aprende patrones** a partir de datos.  
Ejemplos:

*   Clasificador de noticias por tema
*   Detector de duplicados
*   Detector de idioma

Puede ser algo super simple (Naive Bayes) o super complejo (Transformer).

Tú vas a usarlo para clasificar noticias por temas sin escribir reglas a mano.

* * *

## 🔹 **Embedding**

Un embedding es una **representación numérica (vector)** de un texto, donde textos relacionados están “cerca”.

Ejemplo:

*   “Fútbol España” y “Liga española” → vectores cercanos.
*   “Astronomía en Chile” → vector lejos.

Se usa para:

*   Calcular similitud entre noticias.
*   Clasificar según tema.
*   Detectar duplicados.
*   Agrupar por región.

Hoy en día es clave, y facilita muchísimo la parte de clasificación.

* * *

## 🔹 **Clustering**

Técnica para **agrupar automáticamente documentos parecidos**, sin decirle al algoritmo qué grupos quieres.

Ejemplo:  
Le das 2000 noticias y él mismo descubre grupos como:

*   Política España
*   Tecnología
*   Deportes
*   Ucrania
*   Mercado laboral

Tú luego les pones nombre.

* * *

## 🔹 **Similarity (Similitud)**

Medida matemática que te dice qué tan parecidos son dos textos.

Ejemplos de métricas:

*   coseno (la más típica con embeddings)
*   distancia euclídea

Usada para:

*   Detectar noticias duplicadas o muy similares.
*   Asociar una noticia a una categoría existente.
*   Buscar “otras noticias relacionadas”.

* * *

## 🔹 **LLM (Large Language Model)**

Modelos tipo GPT, Claude, Llama…  
Capaces de:

*   resumir
*   clasificar
*   reescribir
*   generar textos coherentes

Serán el **motor principal** para:

*   Resumir noticias largas.
*   Unificarlas en un resumen general.
*   Clasificarlas por tema.
*   Generar titulares claros.
*   Preparar guiones para los audios.

Tus mejores amigos en este proyecto.

* * *

## 🔹 **TTS (Text-to-Speech)**

Tecnología que **convierte texto en voz natural**.

Ejemplos:

*   OpenAI TTS
*   ElevenLabs
*   Azure Cognitive Voice

Sirve para convertir tu resumen diario en un “mini podcast”.

* * *

## 🔹 [**Minimum Viable Product (MVP)**](Minimum%20Viable%20Product%20\(MVP\).md)

La versión mínima funcional de un producto.

El objetivo:

*   Crear algo que _ya funcione_
*   Sin adornos
*   Sin complicación
*   Y que te permita aprender rápido y probar tu idea