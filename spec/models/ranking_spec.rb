require 'rails_helper'

RSpec.describe Ranking, type: :model do
  describe 'validation check' do
    it { should validate_presence_of :mark }
    it { should validate_inclusion_of(:mark).in_range(1..10) }

    it { should allow_value(10).for(:mark) }
    it { should_not allow_value(11).for(:mark) }
  end
end