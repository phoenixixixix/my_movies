class Movie < ApplicationRecord
  belongs_to :category
  has_many :rankings, dependent: :destroy

  accepts_nested_attributes_for :category
end
