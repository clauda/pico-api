require 'rails_helper'

RSpec.describe Favorite, type: :model do
  subject { create(:favorite) }

  describe 'valid favy' do
    it { expect(subject).to be_valid }
  end
end
