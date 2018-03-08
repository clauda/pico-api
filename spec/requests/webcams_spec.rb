require 'rails_helper'

RSpec.describe "Webcams", type: :request do
  describe "GET /webcams" do
    it "works! (now write some real specs)" do
      get webcams_path
      expect(response).to have_http_status(200)
    end
  end
end
