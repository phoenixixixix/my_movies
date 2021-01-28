module MoviesHelper
  def average_ranking(movie)
    if movie.rankings.exists?
      movie.rankings.average(:mark).round(1)
    end
  end
end
