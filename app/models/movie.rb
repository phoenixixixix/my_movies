class Movie < ApplicationRecord
  belongs_to :category
  has_many :rankings, dependent: :destroy
end
