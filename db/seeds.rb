# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Categoria.create(categoria: 'Super LED')
Categoria.create(categoria: 'LED')
Categoria.create(categoria: 'Eletrônicas')

Modelo.create(modelo: 'Par 20')
Modelo.create(modelo: 'Par 30')
Modelo.create(modelo: '2U')
Modelo.create(modelo: '3U')
Modelo.create(modelo: '8U')