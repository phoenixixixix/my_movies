class RankingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie, only: [:create]

  def create
    @new_ranking = Ranking.new(ranking_params)
    @new_ranking.user = current_user
    @new_ranking.movie = @movie

    if @new_ranking.save
      redirect_to @movie, notice: 'Ranking was successfully created.'
    else
      render 'movies/show'
    end
  end

  private
  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def ranking_params
    params.require(:ranking).permit(:mark)
  end
end
