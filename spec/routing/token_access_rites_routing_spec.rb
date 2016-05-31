require "rails_helper"

RSpec.describe TokenAccessRitesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/token_access_rites").to route_to("token_access_rites#index")
    end

    it "routes to #new" do
      expect(:get => "/token_access_rites/new").to route_to("token_access_rites#new")
    end

    it "routes to #show" do
      expect(:get => "/token_access_rites/1").to route_to("token_access_rites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/token_access_rites/1/edit").to route_to("token_access_rites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/token_access_rites").to route_to("token_access_rites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/token_access_rites/1").to route_to("token_access_rites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/token_access_rites/1").to route_to("token_access_rites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/token_access_rites/1").to route_to("token_access_rites#destroy", :id => "1")
    end

  end
end
