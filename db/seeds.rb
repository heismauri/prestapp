# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category 'Herramientas y Maquinaria'
hym_file = URI.open('https://source.unsplash.com/IClZBVw5W5A/1920x1080')
hym_category = Category.new(name: 'Herramientas')
hym_category.picture.attach(io: hym_file, filename: 'IClZBVw5W5A.jpg', content_type: 'image/jpg')

# Category 'Disfraces'
dsf_file = URI.open('https://source.unsplash.com/SDHpS6gbIDk/1920x1080')
dsf_category = Category.new(name: 'Disfraces')
dsf_category.picture.attach(io: dsf_file, filename: 'SDHpS6gbIDk.jpg', content_type: 'image/jpg')

# Category 'Vehiculos'
car_file = URI.open('https://source.unsplash.com/N60_1zpWNtU/1920x1080')
car_category = Category.new(name: 'Vehiculos')
car_category.picture.attach(io: car_file, filename: 'N60_1zpWNtU.jpg', content_type: 'image/jpg')

# Category 'Mujer'
wmn_file = URI.open('https://source.unsplash.com/_KaMTEmJnxY/1920x1080')
wmn_category = Category.new(name: 'Moda Mujer')
wmn_category.picture.attach(io: wmn_file, filename: '_KaMTEmJnxY.jpg', content_type: 'image/jpg')

# Category 'Electronica'
elec_file = URI.open('https://source.unsplash.com/_aXa21cf7rY/1920x1080')
elec_category = Category.new(name: 'Electronica')
elec_category.picture.attach(io: elec_file, filename: '_aXa21cf7rY.jpg', content_type: 'image/jpg')

# Category 'Eventos'
evts_file = URI.open('https://source.unsplash.com/fIHozNWfcvs/1920x1080')
evts_category = Category.new(name: 'Eventos')
evts_category.picture.attach(io: evts_file, filename: 'fIHozNWfcvs.jpg', content_type: 'image/jpg')

# Category 'Hombre'
man_file = URI.open('https://source.unsplash.com/eyFbjKWlR2g/1920x1080')
man_category = Category.new(name: 'Hombre')
man_category.picture.attach(io: man_file, filename: 'eyFbjKWlR2g.jpg', content_type: 'image/jpg')

# Category 'Maquinaria'
maq_file = URI.open('https://source.unsplash.com/XYNjhbQ9sb4/1920x1080')
maq_category = Category.new(name: 'Maquinaria')
maq_category.picture.attach(io: maq_file, filename: 'XYNjhbQ9sb4.jpg', content_type: 'image/jpg')