# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



categorias_list = [
  "Super LED",
  "LED",
  "Eletrônicas",
  "Luminárias"
]

modelos_list = [
	"Par 20",
	"Par 30",
	"2U",
	"3U",
	"8U"
]

cards_list = [
	"JanjaDev",
	"Admin",
	"Comum"
]

users_list = [
	["Bruno Canongia", "bruno@janjadev.com", "$2a$10$1S.gisW9hTvI4nSHYpbQGeTJErRYnb7Xj8dCF0xJBBTszZ4rGK.zG", 1],
	["Roberto", "rc2@janjadev.com", "$2a$10$.2k8IELS9.0.0axqBqEz.OWjNOj8lJiHLW3.P1g10WS/TWE02DmYu", 1]
]

puts '###### POPULANDO DB ######'
categorias_list.each do |categoria|
	puts "categoria: %s" % categoria
	Categoria.create(categoria: categoria)
end

modelos_list.each do |modelo|
	puts "modelo: %s" % modelo
	Modelo.create(modelo: modelo)
end

cards_list.each do |card|
	puts "acesso: %s" % card
	Card.create(card: card)
end

users_list.each do |name, email, password, card_id|
	puts "usuário: %s" % name
	User.create(name: name, email: email, password_digest: password, card_id: card_id)
end