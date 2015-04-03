require 'test_helper'

class AncestorsControllerTest < ActionController::TestCase
  setup do
    @ancestor = ancestors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ancestors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ancestor" do
    assert_difference('Ancestor.count') do
      post :create, ancestor: { last_names: @ancestor.last_names, names: @ancestor.names }
    end

    assert_redirected_to ancestor_path(assigns(:ancestor))
  end

  test "should show ancestor" do
    get :show, id: @ancestor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ancestor
    assert_response :success
  end

  test "should update ancestor" do
    patch :update, id: @ancestor, ancestor: { last_names: @ancestor.last_names, names: @ancestor.names }
    assert_redirected_to ancestor_path(assigns(:ancestor))
  end

  test "should destroy ancestor" do
    assert_difference('Ancestor.count', -1) do
      delete :destroy, id: @ancestor
    end

    assert_redirected_to ancestors_path
  end
end
