require 'rails_helper'

RSpec.describe BeachesController, type: :controller do
  
  describe 'GET #index' do
    subject { get :index, format: :json }
 
    context 'no auth' do
      before { create(:beach) }
      it { is_expected.to be_successful }

      it 'returns valid JSON' do
        json = JSON.parse(subject.body)
        expect(json["data"]).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
    
  end

  describe 'GET #show' do
    let(:beach) { create(:beach) }
    subject { get :show, params: { id: beach.id }, format: :json }
 
    context 'no auth' do
      it { is_expected.to be_successful }
      
      it 'returns valid JSON' do
        expect(subject.body).to eq(BeachSerializer.new(beach).serialized_json)
      end
    end
  end

  describe 'POST #create' do
    let(:admin) { create(:admin) }
    let(:user) { create(:user) }
    let(:beach_params) { { name: 'Miami Beach', city: 'Miami', state: "USA", slug: "miami" } }

    subject { post :create, params: { beach: beach_params }, format: :json  }
 
    context 'as admin' do
      before { request.headers.merge! admin.create_new_auth_token }

      context 'with valid params' do
        it { is_expected.to have_http_status(200) }
 
        it 'creates a beach' do
          expect { subject }.to change(Beach, :count).by(1)
        end
      end
 
      context 'with invalid params' do
        let(:beach_params) { { name: 'Pipa' } }
        it { is_expected.to have_http_status(:unprocessable_entity) }
      end
    end
    
    context 'as a regular user' do
      before { request.headers.merge! user.create_new_auth_token }
      it { is_expected.to have_http_status(:forbidden) }
    end
  end
  
end
