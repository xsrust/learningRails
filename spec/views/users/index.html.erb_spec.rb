require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :name => "Name",
        :api_token => "Api Token"
      ),
      User.create!(
        :email => "Email",
        :name => "Name",
        :api_token => "Api Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Api Token".to_s, :count => 2
  end
end
