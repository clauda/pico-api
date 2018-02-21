require 'rails_helper'

RSpec.describe BeachesController, type: :controller do
  let(:user) { create(:user) }
  let(:beach) { create(:beach) }
 
  describe '#index' do
    subject { get :index }
 
    context 'as a regular user' do
      it { is_expected.to be_successful }
    end
    
  end
end
