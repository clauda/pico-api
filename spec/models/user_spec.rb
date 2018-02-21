require 'rails_helper'

describe User do
  subject { create(:user) }

  describe 'valid user' do
    it { expect(subject).to be_valid }
  end

  describe '#generate_api_key' do
    let(:user) { build(:user) }

    xit 'is called before save' do
      expect(user).to receive(:generate_api_key)
      user.save
    end

    xit 'generates random api key' do
      expect(user.api_key).to be_nil
      user.save
      expect(user.api_key).not_to be_nil
      expect(user.api_key.length).to eq(40)
    end
  end
end