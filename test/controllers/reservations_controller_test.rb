require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { company_id: @reservation.company_id, customvalue: @reservation.customvalue, in: @reservation.in, inreal: @reservation.inreal, note: @reservation.note, out: @reservation.out, outreal: @reservation.outreal, person_id: @reservation.person_id }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { company_id: @reservation.company_id, customvalue: @reservation.customvalue, in: @reservation.in, inreal: @reservation.inreal, note: @reservation.note, out: @reservation.out, outreal: @reservation.outreal, person_id: @reservation.person_id }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
