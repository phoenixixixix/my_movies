require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:category) { FactoryBot.create(:category) }
  let(:movie) { FactoryBot.create(:movie, category: category) }
  let(:movie_with_ranking) { FactoryBot.create(:movie_with_ranking) }

  describe 'Usual user access' do
    login_user

    it '#index movie' do
      get :index
      expect(response).to be_successful
      expect(response).to render_template('index')
    end

    it '#show movie' do
      get :show, params: { id: movie.id }
      movie = assigns(:movie)

      expect(movie.title).to eq('sometitle_1')
      expect(movie.description).to eq('somedescription_1')
      expect(movie.category).to eq(category)

      expect(response).to be_successful
      expect(response).to render_template('show')
    end

    it 'kick user from #new' do
      get :new
      expect(response).not_to be_successful
      expect(flash[:alert]).to be
      expect(response).to redirect_to(root_path)
    end

    it 'kick user from #new' do
      get :edit, params: { id: movie.id }
      expect(response).not_to be_successful
      expect(flash[:alert]).to be
      expect(response).to redirect_to(root_path)
    end
  end

  describe 'Admin user access' do
    login_admin
    it '#new movie' do
      get :new
      expect(response).to be_successful
      expect(response).to render_template('new')
    end

    it '#edit movie' do
      get :edit, params: { id: movie.id }
      expect(response).to be_successful
      expect(response).to render_template('edit')
    end
  end

  describe 'Anonymous user access' do
    it '#index movie' do
      get :index
      expect(response).to be_successful
      expect(response).to render_template('index')
    end

    it 'kick user from #new' do
      get :new
      expect(response).not_to be_successful
      expect(flash[:alert]).to be
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
