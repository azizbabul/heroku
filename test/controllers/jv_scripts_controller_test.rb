require 'test_helper'

class JvScriptsControllerTest < ActionController::TestCase
  setup do
    @jv_script = jv_scripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jv_scripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jv_script" do
    assert_difference('JvScript.count') do
      post :create, jv_script: { bal: @jv_script.bal, depo: @jv_script.depo, withd: @jv_script.withd }
    end

    assert_redirected_to jv_script_path(assigns(:jv_script))
  end

  test "should show jv_script" do
    get :show, id: @jv_script
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jv_script
    assert_response :success
  end

  test "should update jv_script" do
    patch :update, id: @jv_script, jv_script: { bal: @jv_script.bal, depo: @jv_script.depo, withd: @jv_script.withd }
    assert_redirected_to jv_script_path(assigns(:jv_script))
  end

  test "should destroy jv_script" do
    assert_difference('JvScript.count', -1) do
      delete :destroy, id: @jv_script
    end

    assert_redirected_to jv_scripts_path
  end
end
