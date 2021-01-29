require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:category) { FactoryBot.create(:category) }
  let(:movie) { FactoryBot.create(:movie, category: category) }

  describe 'validation check' do
    it { should validate_presence_of :title }
    it { should validate_length_of(:title).is_at_most(233) }
    it { should validate_presence_of :description }
  end

  describe "When title is to long" do
    before { movie.title = 'a' * 256 }
    it { should_not be_valid }
  end

  describe "When title is not present" do
    before { movie.title = ''}
    it { should_not be_valid }
  end

  describe "When title is not present" do
    before { movie.description = ''}
    it { should_not be_valid }
  end
end