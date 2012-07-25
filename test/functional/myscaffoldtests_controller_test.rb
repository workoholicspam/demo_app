require 'test_helper'

class MyscaffoldtestsControllerTest < ActionController::TestCase
  setup do
    @myscaffoldtest = myscaffoldtests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myscaffoldtests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myscaffoldtest" do
    assert_difference('Myscaffoldtest.count') do
      post :create, myscaffoldtest: { name: @myscaffoldtest.name }
    end

    assert_redirected_to myscaffoldtest_path(assigns(:myscaffoldtest))
  end

  test "should show myscaffoldtest" do
    get :show, id: @myscaffoldtest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myscaffoldtest
    assert_response :success
  end

  test "should update myscaffoldtest" do
    put :update, id: @myscaffoldtest, myscaffoldtest: { name: @myscaffoldtest.name }
    assert_redirected_to myscaffoldtest_path(assigns(:myscaffoldtest))
  end

  test "should destroy myscaffoldtest" do
    assert_difference('Myscaffoldtest.count', -1) do
      delete :destroy, id: @myscaffoldtest
    end

    assert_redirected_to myscaffoldtests_path
  end
end
