# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Inicializando carga de BD..."

# Destroy all data
puts "Destuyendo registros anteriores"
Article.destroy_all
Category.destroy_all
User.destroy_all

# Category 'Herramientas y Maquinaria'
puts "Creando registro de categorias"
hym_file = URI.open('https://source.unsplash.com/IClZBVw5W5A/1920x1080')
hym_category = Category.new(name: 'Herramientas')
hym_category.picture.attach(io: hym_file, filename: 'IClZBVw5W5A.jpg', content_type: 'image/jpg')
hym_category.save

# Category 'Disfraces'
dsf_file = URI.open('https://source.unsplash.com/SDHpS6gbIDk/1920x1080')
dsf_category = Category.new(name: 'Disfraces')
dsf_category.picture.attach(io: dsf_file, filename: 'SDHpS6gbIDk.jpg', content_type: 'image/jpg')
dsf_category.save

# Category 'Vehiculos'
car_file = URI.open('https://source.unsplash.com/N60_1zpWNtU/1920x1080')
car_category = Category.new(name: 'Vehiculos')
car_category.picture.attach(io: car_file, filename: 'N60_1zpWNtU.jpg', content_type: 'image/jpg')
car_category.save

# Category 'Mujer'
wmn_file = URI.open('https://source.unsplash.com/_KaMTEmJnxY/1920x1080')
wmn_category = Category.new(name: 'Moda Mujer')
wmn_category.picture.attach(io: wmn_file, filename: '_KaMTEmJnxY.jpg', content_type: 'image/jpg')
wmn_category.save

puts "50% completado..."
# Category 'Electronica'
elec_file = URI.open('https://source.unsplash.com/_aXa21cf7rY/1920x1080')
elec_category = Category.new(name: 'Electronica')
elec_category.picture.attach(io: elec_file, filename: '_aXa21cf7rY.jpg', content_type: 'image/jpg')
elec_category.save

# Category 'Eventos'
evts_file = URI.open('https://source.unsplash.com/fIHozNWfcvs/1920x1080')
evts_category = Category.new(name: 'Eventos')
evts_category.picture.attach(io: evts_file, filename: 'fIHozNWfcvs.jpg', content_type: 'image/jpg')
evts_category.save

# Category 'Hombre'
man_file = URI.open('https://source.unsplash.com/eyFbjKWlR2g/1920x1080')
man_category = Category.new(name: 'Hombre')
man_category.picture.attach(io: man_file, filename: 'eyFbjKWlR2g.jpg', content_type: 'image/jpg')
man_category.save

# Category 'Maquinaria'
maq_file = URI.open('https://source.unsplash.com/XYNjhbQ9sb4/1920x1080')
maq_category = Category.new(name: 'Maquinaria')
maq_category.picture.attach(io: maq_file, filename: 'XYNjhbQ9sb4.jpg', content_type: 'image/jpg')
maq_category.save

# Adding two users
puts "Creando usuario 1"
user_alberto = User.create(first_name: "Alberto", last_name: "Armani", email: "albertoccs@go.com", password: "12345678")
puts "Creando usuario 2"
user_zara = User.create(first_name: "Zara", last_name: "Larsson", email: "zaralar@go.com", password: "12345678")

puts "Agregando Articulos usuario 1..."
# Adding 4 Articles to user 1
art_file = URI.open('https://source.unsplash.com/NA8FlWwxnaM/1080x1080')
art_u1 = Article.new(name: 'Vestido', description: Faker::Lorem.paragraph_by_chars, price: 67000)
art_u1.picture.attach(io: art_file, filename: 'NA8FlWwxnaM.jpg', content_type: 'image/jpg')
art_u1.category = wmn_category
art_u1.user = user_alberto
art_u1.save

art_file = URI.open('https://source.unsplash.com/66JMudIjDTw/1080x1080')
art_u1 = Article.new(name: 'Audifono inalambrico', description: 'Audífonos bluetooth ideales para jugar y experimentar un gran sonido. 
  Puedes utilizarlo en cualquier dispositivo con bluetooth. Blauw GM03 no necesitas tener mas de un par. 
  Utilízalos en tu celular, TV, computadora, Play Station! 
  El micrófono es flexible y desmontable para una mayor comodidad. Posee botones de control en el audífono. ', price: 5000)
art_u1.picture.attach(io: art_file, filename: '66JMudIjDTw.jpg', content_type: 'image/jpg')
art_u1.category = elec_category
art_u1.user = user_alberto
art_u1.save

puts "50% completado..."
art_file = URI.open('https://source.unsplash.com/w2VLVCg5K-k/1080x1080')
art_u1 = Article.new(name: 'Caja de Herramientas', description: 'Kit de herraamientas para manualidades, 5 destorniadores, 2 paletas,1 alicate,
  1 manual para tarugos, instalador de ceramica.', price: 13500)
art_u1.picture.attach(io: art_file, filename: 'w2VLVCg5K-k.jpg', content_type: 'image/jpg')
art_u1.category = hym_category
art_u1.user = user_alberto
art_u1.save

art_file = URI.open('https://source.unsplash.com/-HJDhIQ4jYE/1080x1080')
art_u1 = Article.new(name: 'Disfraz', description: 'Alequín 
  Camisa , pantalón  y sombrero. Instrumiento acordeón es opcional.', price: 12900)
art_u1.picture.attach(io: art_file, filename: '-HJDhIQ4jYE.jpg', content_type: 'image/jpg')
art_u1.category = dsf_category
art_u1.user = user_alberto
art_u1.save

# Adding 5 Articles to user 1
puts "Agregando Articulos usuario 2..."
art_file = URI.open('https://source.unsplash.com/WnY0-rZnPvc/1080x1080')
art_u1 = Article.new(name: 'Zapatillas And1', description: 'Modelo trail running mujer / talla 3', price: 6990)
art_u1.picture.attach(io: art_file, filename: 'WnY0-rZnPvc.jpg', content_type: 'image/jpg')
art_u1.category = man_category
art_u1.user = user_zara
art_u1.save

art_file = URI.open('https://source.unsplash.com/4yEMu_YamEo/1080x1080')
art_u1 = Article.new(name: 'Jeep 4x4', description: 'Entrega en aeropuerto Carriel Sur - Concepción, atención todos los días de la semana. 
  Jeep 4x4 , todo terreno, seguros incluidos, kit de seguridad.', price: 132990)
art_u1.picture.attach(io: art_file, filename: '4yEMu_YamEo.jpg', content_type: 'image/jpg')
art_u1.category = car_category
art_u1.user = user_zara
art_u1.save

puts "50% completado..."
art_file = URI.open('https://source.unsplash.com/FU1KddSIIR4/1080x1080')
art_u1 = Article.new(name: 'Evento Jazz', description: 'Concepción no sólo da espacio al rock and roll, también a otros géneros, y el jazz es un buen ejemplo.
  Anfiteatro del Cerro Caracol.
  Dias disponibles : 20 y 22 de octubre 2021
  Carlos Cortés Hammond Trío, 
  Monreal Latin Blues y la Big Band Concepción.', price: 77000)
art_u1.picture.attach(io: art_file, filename: 'FU1KddSIIR4.jpg', content_type: 'image/jpg')
art_u1.category = evts_category
art_u1.user = user_zara
art_u1.save

art_file = URI.open('https://source.unsplash.com/KfMj3fi4R4s/1080x1080')
art_u1 = Article.new(name: 'Camara Profesional', description: 'Cámara Profesional
  Tamaño de pantalla 3 pulgadas
  Formatos de imagen: JPEG/RAW
  Sensibilidad ISO: Auto 100-25600 (51200 max)
  Alto	:7,7 cm
  Ancho	:8,35 cm
  Profundidad :10,73 cm
  Porta estuche incluido', price: 29990)
art_u1.picture.attach(io: art_file, filename: 'KfMj3fi4R4s.jpg', content_type: 'image/jpg')
art_u1.category = elec_category
art_u1.user = user_zara
art_u1.save

puts "Proceso finalizado"