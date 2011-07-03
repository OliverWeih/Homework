require 'test_helper'

class DbroutesControllerTest < ActionController::TestCase
  setup do
    @dbroute = dbroutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dbroutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dbroute" do
    assert_difference('Dbroute.count') do
      post :create, :dbroute => @dbroute.attributes
    end

    assert_redirected_to dbroute_path(assigns(:dbroute))
  end

  test "should show dbroute" do
    get :show, :id => @dbroute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dbroute.to_param
    assert_response :success
  end

  test "should update dbroute" do
    put :update, :id => @dbroute.to_param, :dbroute => @dbroute.attributes
    assert_redirected_to dbroute_path(assigns(:dbroute))
  end

  test "should destroy dbroute" do
    assert_difference('Dbroute.count', -1) do
      delete :destroy, :id => @dbroute.to_param
    end

    assert_redirected_to dbroutes_path
  end
end
