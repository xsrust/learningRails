require 'rails_helper'

RSpec.describe "token_access_rites/edit", type: :view do
  before(:each) do
    @token_access_rite = assign(:token_access_rite, TokenAccessRite.create!())
  end

  it "renders the edit token_access_rite form" do
    render

    assert_select "form[action=?][method=?]", token_access_rite_path(@token_access_rite), "post" do
    end
  end
end
