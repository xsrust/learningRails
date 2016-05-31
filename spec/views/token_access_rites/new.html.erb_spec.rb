require 'rails_helper'

RSpec.describe "token_access_rites/new", type: :view do
  before(:each) do
    assign(:token_access_rite, TokenAccessRite.new())
  end

  it "renders new token_access_rite form" do
    render

    assert_select "form[action=?][method=?]", token_access_rites_path, "post" do
    end
  end
end
