class Categoria < ActiveRecord::Base
	has_many :produtos
end
