require 'test_helper'

class DonarsControllerTest < ActionController::TestCase
  test "should get listalldonars" do
    get :listalldonars
    assert_response :success
  end

end
