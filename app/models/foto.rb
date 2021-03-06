class Foto < ActiveRecord::Base
	belongs_to :produto
	
	validates :produto, presence: true
	has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
