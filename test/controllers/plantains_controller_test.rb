require 'test_helper'

class PlantainsControllerTest < ActionController::TestCase
  setup do
    @plantain = plantains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plantains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plantain" do
    assert_difference('Plantain.count') do
      post :create, plantain: { admin: @plantain.admin, expiry: @plantain.expiry, name: @plantain.name, size: @plantain.size }
    end

    assert_redirected_to plantain_path(assigns(:plantain))
  end

  test "should show plantain" do
    get :show, id: @plantain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plantain
    assert_response :success
  end

  test "should update plantain" do
    patch :update, id: @plantain, plantain: { admin: @plantain.admin, expiry: @plantain.expiry, name: @plantain.name, size: @plantain.size }
    assert_redirected_to plantain_path(assigns(:plantain))
  end

  test "should destroy plantain" do
    assert_difference('Plantain.count', -1) do
      delete :destroy, id: @plantain
    end

    assert_redirected_to plantains_path
  end
end
