require 'test_helper'

class OrdinancesControllerTest < ActionController::TestCase
  setup do
    @ordinance = ordinances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordinances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordinance" do
    assert_difference('Ordinance.count') do
      post :create, ordinance: { performed_in: @ordinance.performed_in }
    end

    assert_redirected_to ordinance_path(assigns(:ordinance))
  end

  test "should show ordinance" do
    get :show, id: @ordinance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordinance
    assert_response :success
  end

  test "should update ordinance" do
    patch :update, id: @ordinance, ordinance: { performed_in: @ordinance.performed_in }
    assert_redirected_to ordinance_path(assigns(:ordinance))
  end

  test "should destroy ordinance" do
    assert_difference('Ordinance.count', -1) do
      delete :destroy, id: @ordinance
    end

    assert_redirected_to ordinances_path
  end
end
