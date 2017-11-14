require 'test_helper'

class PeelsControllerTest < ActionController::TestCase
  setup do
    @peel = peels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peel" do
    assert_difference('Peel.count') do
      post :create, peel: { pieces: @peel.pieces, references: @peel.references }
    end

    assert_redirected_to peel_path(assigns(:peel))
  end

  test "should show peel" do
    get :show, id: @peel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peel
    assert_response :success
  end

  test "should update peel" do
    patch :update, id: @peel, peel: { pieces: @peel.pieces, references: @peel.references }
    assert_redirected_to peel_path(assigns(:peel))
  end

  test "should destroy peel" do
    assert_difference('Peel.count', -1) do
      delete :destroy, id: @peel
    end

    assert_redirected_to peels_path
  end
end
