require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  

  test "index, user not signed in" do
    get :home 
    assert_response :success 
    assert_select "h1", "Log Your Hours."
  end
end
