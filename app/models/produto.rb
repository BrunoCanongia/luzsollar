class Produto < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :modelo
  has_many :filhos, :class_name => "Produto", :foreign_key => "parent_id"
  belongs_to :pai, :class_name => "Produto", :foreign_key => "parent_id"
  has_many :fotos

  paginates_per 6

  validates :cod, :categoria, :modelo, presence: true
end
