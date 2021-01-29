require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { FactoryBot.create(:category) }

  describe 'validation check' do
    it { should validate_presence_of :title }
    it { should validate_length_of(:title).is_at_most(233) }
    it { should validate_uniqueness_of(:title) }
  end

  describe "When title is to long" do
    before { category.title = 'a' * 256 }
    it { should_not be_valid }
  end

  describe "When title is not present" do
    before { category.title = ''}
    it { should_not be_valid }
  end
end