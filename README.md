# Título del Proyecto

Desafío N°764: Desafío evaluado - Arreglos hashes y APIs.


# Ubicación del Proyecto
URL: https://github.com/xoshdev/desafio_764


## Descripción

Desafío evaluado como parte del Bootcamp Ruby on Rails para Emprendimientos Digitales, a través de Inforcap, SENCE.


## Objetivo general

1. Implementar el consumo de una API de la NASA en base a imágenes de Mars Rover Photos.
2. URL nativa de la API: https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY
3. API Key obtenida previo registro: tMQjezhbx1i7T8hIIITKFHdnj6PFVvZd1eRNrg9i
4. Construir un archivo HTML en base a la API.
5. Atender requerimientos específicos.


## Instrucciones del Desafío

Pasos para acceder a Mars Rover Photos.

Una vez generado el api_key deberás ingresar en el menú los siguientes apartados:

1. En el menú de navegación ingresar a Browse APIs.
2. Luego, buscar en el listado de información Mars Rover Photos.
3. Luego en Example Queries, seleccionar el siguiente enlace
https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000
&api_key=DEMO_KEY
4. En el parámetro ?sol= aparece el número 1000, esto retorna mil fotos asociadas a la
consulta, modifica el número e ingresa al menos 10 para que el retorno de
información no sea tan extenso.
5. En el parámetro $api_key=, deberás ingresar la key generada durante el registro
solicitado en la documentación.

Requerimientos
1. Crear el método request que reciba una url y retorne el hash con los resultados.

2. Crear un método llamado buid_web_page que reciba el hash de respuesta con todos
los datos y construya una página web. Se evaluará la página creada y tiene que tener
este formato:
<html>
<head>
</head>
<body>
<ul>
<li><img src='.../398380645PRCLF0030000CC AM04010L1.PNG'></li>
<li><img src='.../398381687EDR_F0030000CCAM05010M_.JPG'></li>
</ul>
</body>
</html>

3. Crear un método photos_count que reciba el hash de respuesta y devuelva un nuevo
hash con el nombre de la cámara y la cantidad de fotos. 

# Instrucciones técnicas del Deployment

1. Abra Visual Studio Code.
2. Ingresa al directorio del Proyecto desde la Consola de Windows.
Ex: cd desafio_764
3. Ejecuta el comando: ruby api.rb, a través de la cual se visualizan los resultados esperados, donde puedes revisar el código para revisar el código de cada requerimiento.
4. Para visualizar el archivo html generado a través de api.rb, ingresa a: index.html una vez ejecutado el comando del punto 3.
5. Ingresa el archivo index.html y dale click con el Mouse/derecho a "Open in Default" para visualizar el html en tu navegador.

### Prerrequisitos 📋

Lista de software y herramientas, incluyendo versiones, que necesitas para ejecutar y visualziar este proyecto:

- Sistema Operativo (Windows 10+, MacOs)
- Lenguaje de programación: Ruby.
- Framework: Bootstrap CSS v5.1.3 (CDN).
- Otros: HTML.

## Construido Con 🛠️

Tecnologías utilizadas para construir este proyecto:

- [HTML](https://www.ruby-lang.org/es/)
- [Ruby](https://www.ruby-lang.org/es/)
- [Bootstrap](https://getbootstrap.com/docs/5.1/getting-started/introduction/) - Versión v5.1.3.

## Versionado 📌

Usamos [Git](https://git-scm.com) para el versionado.

## Autores ✒️

- **José Cheuquepil** - Bootcamp RoR - [José Cheuquepil](https://github.com/xoshdev)


--


⌨️ con ❤️ por [José Cheuquepil](https://github.com/xoshdev) 😊
