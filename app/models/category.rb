class Category < ApplicationRecord
  has_many :movies, dependent: :destroy

  validates :title, presence: true,
                    length: { maximum: 233 },
                    uniqueness: true
end
