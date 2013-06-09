require 'test_helper'

class SustainabilityDataControllerTest < ActionController::TestCase
  test "should get dow_jones" do
    get :dow_jones
    assert_response :success
  end

end
