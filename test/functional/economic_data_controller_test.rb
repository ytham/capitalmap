require 'test_helper'

class EconomicDataControllerTest < ActionController::TestCase
  test "should get leading_indicators" do
    get :leading_indicators
    assert_response :success
  end

end
