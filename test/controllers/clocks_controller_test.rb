require 'test_helper'

class ClocksControllerTest < ActionController::TestCase


def setup 
  @user = User.find(1)
  @clock = Clock.find(1)
end 

  test "index at clocks works" do 
    assert_equal 1, @user.id
    assert_equal "kyle@example.com", @user.email
    assert_equal 1, @clock.id 
  end 

  def test_index_not_signed_in 
    get :index 
    assert root_path 
  end 

  def test_index_signed_in 
    sign_in @user 
    get :index 
    assert_response :success
  end 

  def test_create
    sign_in @user 
    get :create 
    assert_response :success
  end 
end