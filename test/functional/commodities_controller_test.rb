require 'test_helper'

class CommoditiesControllerTest < ActionController::TestCase
  test "should get oil" do
    get :oil
    assert_response :success
  end

  test "should get renewables" do
    get :renewables
    assert_response :success
  end

  test "should get copper" do
    get :copper
    assert_response :success
  end

end
