class Ranking < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :mark, presence: true,
                   inclusion: 1..10
  validate :uniq_user_ranking, if: -> { user.present? }

  private

  def uniq_user_ranking
    if Ranking.where(movie_id: movie.id, user_id: user.id).present?
      errors.add(:base, 'you already rated this movie')
    end
  end
end
