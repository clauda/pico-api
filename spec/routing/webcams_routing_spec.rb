require "rails_helper"

RSpec.describe WebcamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/webcams").to route_to("webcams#index")
    end


    it "routes to #show" do
      expect(get: "/webcams/1").to route_to("webcams#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/webcams").to route_to("webcams#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/webcams/1").to route_to("webcams#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/webcams/1").to route_to("webcams#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/webcams/1").to route_to("webcams#destroy", id: "1")
    end

  end
end
