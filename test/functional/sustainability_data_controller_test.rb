require 'test_helper'

class SustainabilityDataControllerTest < ActionController::TestCase
  test "should get dow_jones" do
    get :dow_jones
    assert_response :success
  end

end

class SustainabilityDataControllerTestTwo <ActionController::TestCase
	test "should get social_data" do 
		get :social_data
		assert_response :success
	end 
end 

