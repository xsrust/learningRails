require 'rails_helper'

RSpec.describe "token_access_rites/show", type: :view do
  before(:each) do
    @token_access_rite = assign(:token_access_rite, TokenAccessRite.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
