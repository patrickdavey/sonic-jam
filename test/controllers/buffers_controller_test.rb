require 'test_helper'

class BuffersControllerTest < ActionController::TestCase
  setup do
    @buffer = buffers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buffers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buffer" do
    assert_difference('Buffer.count') do
      post :create, buffer: { code: @buffer.code, name: @buffer.name }
    end

    assert_redirected_to buffer_path(assigns(:buffer))
  end

  test "should show buffer" do
    get :show, id: @buffer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buffer
    assert_response :success
  end

  test "should update buffer" do
    patch :update, id: @buffer, buffer: { code: @buffer.code, name: @buffer.name }
    assert_redirected_to buffer_path(assigns(:buffer))
  end

  test "should destroy buffer" do
    assert_difference('Buffer.count', -1) do
      delete :destroy, id: @buffer
    end

    assert_redirected_to buffers_path
  end
end
