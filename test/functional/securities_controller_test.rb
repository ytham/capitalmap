require 'test_helper'

class SecuritiesControllerTest < ActionController::TestCase
  test "should get corporate_bonds" do
    get :corporate_bonds
    assert_response :success
  end

  test "should get soverign_bonds" do
    get :soverign_bonds
    assert_response :success
  end

  test "should get municipal_bonds" do
    get :municipal_bonds
    assert_response :success
  end

  test "should get equities" do
    get :equities
    assert_response :success
  end

  test "should get etfs" do
    get :etfs
    assert_response :success
  end

end
