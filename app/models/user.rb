class User < ApplicationRecord
  has_many :rankings

  validates :name, presence: true,
                   length: { maximum: 35 }
end
