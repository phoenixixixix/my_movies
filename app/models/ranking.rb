class Ranking < ApplicationRecord
  belongs_to :movie
  belongs_to :user, optional: true

  validates :mark, presence: true,
                   inclusion: 1..10
end
