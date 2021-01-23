class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable, :rememberable

  has_many :rankings

  validates :name, presence: true,
                   length: { maximum: 35 }
end
