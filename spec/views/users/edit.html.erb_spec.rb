require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :email => "MyString",
      :name => "MyString",
      :api_token => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_api_token[name=?]", "user[api_token]"
    end
  end
end
