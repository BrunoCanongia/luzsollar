class Produto < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :modelo
  belongs_to :produto, :foreign_key => "parent_id"
  has_many :fotos

  paginates_per 6

  validates :cod, :categoria, :modelo, presence: true
end
