require 'test_helper'

class BoardingpassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boardingpass = boardingpasses(:one)
  end

  test "should get index" do
    get boardingpasses_url
    assert_response :success
  end

  test "should get new" do
    get new_boardingpass_url
    assert_response :success
  end

  test "should create boardingpass" do
    assert_difference('Boardingpass.count') do
      post boardingpasses_url, params: { boardingpass: { boardingDate: @boardingpass.boardingDate, boardingTime: @boardingpass.boardingTime, bookingRef: @boardingpass.bookingRef, destination: @boardingpass.destination, eticket: @boardingpass.eticket, flight: @boardingpass.flight, frequentFlyerNumber: @boardingpass.frequentFlyerNumber, gate: @boardingpass.gate, origin: @boardingpass.origin, passengerName: @boardingpass.passengerName, seat: @boardingpass.seat, sequence: @boardingpass.sequence, ticketClass: @boardingpass.ticketClass } }
    end

    assert_redirected_to boardingpass_url(Boardingpass.last)
  end

  test "should show boardingpass" do
    get boardingpass_url(@boardingpass)
    assert_response :success
  end

  test "should get edit" do
    get edit_boardingpass_url(@boardingpass)
    assert_response :success
  end

  test "should update boardingpass" do
    patch boardingpass_url(@boardingpass), params: { boardingpass: { boardingDate: @boardingpass.boardingDate, boardingTime: @boardingpass.boardingTime, bookingRef: @boardingpass.bookingRef, destination: @boardingpass.destination, eticket: @boardingpass.eticket, flight: @boardingpass.flight, frequentFlyerNumber: @boardingpass.frequentFlyerNumber, gate: @boardingpass.gate, origin: @boardingpass.origin, passengerName: @boardingpass.passengerName, seat: @boardingpass.seat, sequence: @boardingpass.sequence, ticketClass: @boardingpass.ticketClass } }
    assert_redirected_to boardingpass_url(@boardingpass)
  end

  test "should destroy boardingpass" do
    assert_difference('Boardingpass.count', -1) do
      delete boardingpass_url(@boardingpass)
    end

    assert_redirected_to boardingpasses_url
  end
end
