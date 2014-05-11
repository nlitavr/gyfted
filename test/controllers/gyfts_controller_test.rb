require 'test_helper'

class GyftsControllerTest < ActionController::TestCase
  setup do
    @gyft = gyfts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gyfts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gyft" do
    assert_difference('Gyft.count') do
      post :create, gyft: { description: @gyft.description, desire: @gyft.desire, name: @gyft.name, price: @gyft.price }
    end

    assert_redirected_to gyft_path(assigns(:gyft))
  end

  test "should show gyft" do
    get :show, id: @gyft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gyft
    assert_response :success
  end

  test "should update gyft" do
    patch :update, id: @gyft, gyft: { description: @gyft.description, desire: @gyft.desire, name: @gyft.name, price: @gyft.price }
    assert_redirected_to gyft_path(assigns(:gyft))
  end

  test "should destroy gyft" do
    assert_difference('Gyft.count', -1) do
      delete :destroy, id: @gyft
    end

    assert_redirected_to gyfts_path
  end
end
