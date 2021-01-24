class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable, :rememberable

  has_many :rankings
end
