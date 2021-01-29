require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { FactoryBot.create(:category) }

  describe 'GET #show' do
    it 'returns a success response' do
      get :show, params: { id: category.id }
      expect(response).to be_successful
    end
  end
end