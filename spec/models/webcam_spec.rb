require 'rails_helper'

RSpec.describe Webcam, type: :model do
  subject { create(:webcam) }

  describe 'valid webcam' do
    it { expect(subject).to be_valid }
  end
end
