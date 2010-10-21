require 'test_helper'

class BoardloginsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boardlogins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boardlogin" do
    assert_difference('Boardlogin.count') do
      post :create, :boardlogin => { }
    end

    assert_redirected_to boardlogin_path(assigns(:boardlogin))
  end

  test "should show boardlogin" do
    get :show, :id => boardlogins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => boardlogins(:one).to_param
    assert_response :success
  end

  test "should update boardlogin" do
    put :update, :id => boardlogins(:one).to_param, :boardlogin => { }
    assert_redirected_to boardlogin_path(assigns(:boardlogin))
  end

  test "should destroy boardlogin" do
    assert_difference('Boardlogin.count', -1) do
      delete :destroy, :id => boardlogins(:one).to_param
    end

    assert_redirected_to boardlogins_path
  end
end
