class User < ActiveRecord::Base
  belongs_to :card

  paginates_per 2
  has_secure_password

  validates :name, :email, :card, presence: true

end
