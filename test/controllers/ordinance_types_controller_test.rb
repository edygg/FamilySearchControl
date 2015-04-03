require 'test_helper'

class OrdinanceTypesControllerTest < ActionController::TestCase
  setup do
    @ordinance_type = ordinance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordinance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordinance_type" do
    assert_difference('OrdinanceType.count') do
      post :create, ordinance_type: { name: @ordinance_type.name }
    end

    assert_redirected_to ordinance_type_path(assigns(:ordinance_type))
  end

  test "should show ordinance_type" do
    get :show, id: @ordinance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordinance_type
    assert_response :success
  end

  test "should update ordinance_type" do
    patch :update, id: @ordinance_type, ordinance_type: { name: @ordinance_type.name }
    assert_redirected_to ordinance_type_path(assigns(:ordinance_type))
  end

  test "should destroy ordinance_type" do
    assert_difference('OrdinanceType.count', -1) do
      delete :destroy, id: @ordinance_type
    end

    assert_redirected_to ordinance_types_path
  end
end
