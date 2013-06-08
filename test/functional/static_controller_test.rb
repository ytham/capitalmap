require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get hedge_funds" do
    get :hedge_funds
    assert_response :success
  end

  test "should get investment_management" do
    get :investment_management
    assert_response :success
  end

  test "should get financial_advisors" do
    get :financial_advisors
    assert_response :success
  end

  test "should get traders" do
    get :traders
    assert_response :success
  end

end
