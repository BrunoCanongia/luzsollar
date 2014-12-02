class Modelo < ActiveRecord::Base
	has_many :catmods
	has_many :categorias, through: :catmods
end
