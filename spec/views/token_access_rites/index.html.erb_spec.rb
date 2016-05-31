require 'rails_helper'

RSpec.describe "token_access_rites/index", type: :view do
  before(:each) do
    assign(:token_access_rites, [
      TokenAccessRite.create!(),
      TokenAccessRite.create!()
    ])
  end

  it "renders a list of token_access_rites" do
    render
  end
end
