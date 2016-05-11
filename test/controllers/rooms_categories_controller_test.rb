require 'test_helper'

class RoomsCategoriesControllerTest < ActionController::TestCase
  setup do
    @rooms_category = rooms_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rooms_category" do
    assert_difference('RoomsCategory.count') do
      post :create, rooms_category: { name: @rooms_category.name }
    end

    assert_redirected_to rooms_category_path(assigns(:rooms_category))
  end

  test "should show rooms_category" do
    get :show, id: @rooms_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rooms_category
    assert_response :success
  end

  test "should update rooms_category" do
    patch :update, id: @rooms_category, rooms_category: { name: @rooms_category.name }
    assert_redirected_to rooms_category_path(assigns(:rooms_category))
  end

  test "should destroy rooms_category" do
    assert_difference('RoomsCategory.count', -1) do
      delete :destroy, id: @rooms_category
    end

    assert_redirected_to rooms_categories_path
  end
end
