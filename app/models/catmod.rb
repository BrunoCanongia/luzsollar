class Catmod < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :modelo
end
