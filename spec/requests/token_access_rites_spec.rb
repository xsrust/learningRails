require 'rails_helper'

RSpec.describe "TokenAccessRites", type: :request do
  describe "GET /token_access_rites" do
    it "works! (now write some real specs)" do
      get token_access_rites_path
      expect(response).to have_http_status(200)
    end
  end
end
