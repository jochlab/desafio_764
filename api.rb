#Requerimiento Nro 1: Crear el método request que reciba una url y retorne el hash con los resultados
require 'uri'
require 'net/http'
require 'json'

def request(url_requested) #metodo request.
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true #capa de seguridad mediante el cifrado SSL/TLS.
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER #regla de seguridad para verificar la validez del certificado presentado por el servidor.
    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'

    response = http.request(request)
    return JSON.parse(response.body)
end

data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10
&api_key=tMQjezhbx1i7T8hIIITKFHdnj6PFVvZd1eRNrg9i')

puts data #imprime el arreglo con los resultados del hash.
puts

#Requerimiento Nro 2: Crear un método llamado buid_web_page que reciba el hash de respuesta con todos los datos y construya una página web
def build_web_page(data_hash)
    html_contenido = '
    <!DOCTYPE html>
    <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="author" content="Josech Software Engineer">
        <meta name="copyright" content="2023 Copyright of Josech">
        <meta name="description" content="Sitio web oficial de Mars Rover Photos - Powered by NASA">
        <meta name="keywords" content="Mars Rover Photos, NASA, fotos del Universo">

        <!-- CDN Bootstrap CSS v5.1.3-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Sitio Web de Mars Rover Photos - NASA</title>
        </head>
    <body>
    <div class="container text-center">
    <h1>Fotografías de Mars Rover</h1>
    '
    data_hash['photos'].each do |photo|
        html_contenido += "<li><img src='#{photo['img_src']}' alt='Mars Rover Photo - NASA'><p>
        Nombre: #{photo['camera']['full_name']}</p></li>\n"
        html_contenido += "
        Fecha de lanzamiento: #{photo['rover']['landing_date']}</p></li>\n"
        html_contenido += "<br>\n"
        
    end
    
    html_contenido += 
    '</div>
        <footer>
        <div style="text-align: center;">
            <h2>Mars Rover Photo - NASA</h2>
    </footer>

    </body>
    </html>'
    
    File.write('index.html', html_contenido.lstrip) #acción de Ruby para escribir el contenido HTML generado en la variable html_content en el archivo index.html, y donde .lstrip es un metodo de Ruby para eliminar espacios en blanco, y saltos de linea vacios, del lado izquierdo de una cadena.
end

build_web_page(data)

#Requerimiento Nro 3: Crear un método photos_count que reciba el hash de respuesta y devuelva un nuevo hash con el nombre de la cámara y la cantidad de fotos.
def photos_count(data_hash)
    camera_count = Hash.new(0)

    data_hash['photos'].each do |photo|
        camera_name = photo['camera']['name']
        camera_count[camera_name] += 1
    end

    camera_count
end

data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=tMQjezhbx1i7T8hIIITKFHdnj6PFVvZd1eRNrg9i')
counts = photos_count(data)

counts.each do |camera, count|
    puts "Camera: #{camera} , Cantidad: #{count}"
end


