require 'rails_helper'

RSpec.describe Beach, type: :model do
  subject { create(:beach) }
  
  describe 'a valid Beach' do
    it { expect(subject).to be_valid }
  end

  describe 'a invalid Beach' do
    let(:beach) { build(:beach, name: '' )}

    it "name can't be blank" do
      expect(beach).to be_invalid
    end
  end

end
