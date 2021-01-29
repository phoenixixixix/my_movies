class MoviesController < ApplicationController
  before_action :authenticate_active_admin_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  def index
    @movies = Movie.paginate(page: params[:page], per_page: 6)
    @categories = Category.all
  end

  # GET /movies/1
  def show
    @new_ranking = @movie.rankings.build(params[:ranking])
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie.build_category
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :description, :category_id, category_attributes: [:title])
  end
end
