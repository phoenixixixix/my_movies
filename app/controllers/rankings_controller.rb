class RankingsController < ApplicationController
  before_action :set_ranking, only: [:destroy]

  # POST /rankings
  def create
    @new_ranking = Ranking.new(ranking_params)
    @ranking.user = current_user

    if @ranking.save
      redirect_to @ranking, notice: 'Ranking was successfully created.'
    else
      render :new
    end
  end

  # DELETE /rankings/1
  def destroy
    @ranking.destroy
    redirect_to rankings_url, notice: 'Ranking was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ranking
    @ranking = Ranking.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ranking_params
    params.require(:ranking).permit(:mark)
  end
end
