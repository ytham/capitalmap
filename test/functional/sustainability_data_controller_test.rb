require 'test_helper'

class SustainabilityDataControllerTest < ActionController::TestCase
  test "should get dow_jones" do
    get :dow_jones
    assert_response :success
  end

end

class SustainabilityDataControllerTestTwo <ActionController::TestCase
	test "should get corporate_social_responsibility" do 
		get :corporate_social_responsibility
		assert_response :success
	end 
end 

class SustainabilityDataControllerTestTwo <ActionController::TestCase
	test "should get corporate_governance" do 
		get :corporate_governance
		assert_response :success
	end 
end 

class SustainabilityDataControllerTestTwo <ActionController::TestCase
	test "should get environmental_data" do 
		get :environmental_data
		assert_response :success
	end 
end 