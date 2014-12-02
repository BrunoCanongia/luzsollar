class Categoria < ActiveRecord::Base
	has_many :catmods
	has_many :modelos, through: :catmods

	has_many :produtos
end
