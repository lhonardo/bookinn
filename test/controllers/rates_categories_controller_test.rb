require 'test_helper'

class RatesCategoriesControllerTest < ActionController::TestCase
  setup do
    @rates_category = rates_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rates_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rates_category" do
    assert_difference('RatesCategory.count') do
      post :create, rates_category: { extra: @rates_category.extra, extrasp: @rates_category.extrasp, onepax: @rates_category.onepax, onepaxsp: @rates_category.onepaxsp, rate_id: @rates_category.rate_id, rooms_category_id: @rates_category.rooms_category_id, twopax: @rates_category.twopax, twopaxsp: @rates_category.twopaxsp }
    end

    assert_redirected_to rates_category_path(assigns(:rates_category))
  end

  test "should show rates_category" do
    get :show, id: @rates_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rates_category
    assert_response :success
  end

  test "should update rates_category" do
    patch :update, id: @rates_category, rates_category: { extra: @rates_category.extra, extrasp: @rates_category.extrasp, onepax: @rates_category.onepax, onepaxsp: @rates_category.onepaxsp, rate_id: @rates_category.rate_id, rooms_category_id: @rates_category.rooms_category_id, twopax: @rates_category.twopax, twopaxsp: @rates_category.twopaxsp }
    assert_redirected_to rates_category_path(assigns(:rates_category))
  end

  test "should destroy rates_category" do
    assert_difference('RatesCategory.count', -1) do
      delete :destroy, id: @rates_category
    end

    assert_redirected_to rates_categories_path
  end
end
