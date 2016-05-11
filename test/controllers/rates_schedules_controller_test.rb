require 'test_helper'

class RatesSchedulesControllerTest < ActionController::TestCase
  setup do
    @rates_schedule = rates_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rates_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rates_schedule" do
    assert_difference('RatesSchedule.count') do
      post :create, rates_schedule: { from: @rates_schedule.from, rate_id: @rates_schedule.rate_id, to: @rates_schedule.to }
    end

    assert_redirected_to rates_schedule_path(assigns(:rates_schedule))
  end

  test "should show rates_schedule" do
    get :show, id: @rates_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rates_schedule
    assert_response :success
  end

  test "should update rates_schedule" do
    patch :update, id: @rates_schedule, rates_schedule: { from: @rates_schedule.from, rate_id: @rates_schedule.rate_id, to: @rates_schedule.to }
    assert_redirected_to rates_schedule_path(assigns(:rates_schedule))
  end

  test "should destroy rates_schedule" do
    assert_difference('RatesSchedule.count', -1) do
      delete :destroy, id: @rates_schedule
    end

    assert_redirected_to rates_schedules_path
  end
end
