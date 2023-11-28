require "test_helper"

class TouristPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourist_place = tourist_places(:one)
  end

  test "should get index" do
    get tourist_places_url
    assert_response :success
  end

  test "should get new" do
    get new_tourist_place_url
    assert_response :success
  end

  test "should create tourist_place" do
    assert_difference("TouristPlace.count") do
      post tourist_places_url, params: { tourist_place: { address: @tourist_place.address, description: @tourist_place.description, label: @tourist_place.label, name: @tourist_place.name, opening_hours: @tourist_place.opening_hours, phone_number: @tourist_place.phone_number, photo: @tourist_place.photo, website_url: @tourist_place.website_url } }
    end

    assert_redirected_to tourist_place_url(TouristPlace.last)
  end

  test "should show tourist_place" do
    get tourist_place_url(@tourist_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourist_place_url(@tourist_place)
    assert_response :success
  end

  test "should update tourist_place" do
    patch tourist_place_url(@tourist_place), params: { tourist_place: { address: @tourist_place.address, description: @tourist_place.description, label: @tourist_place.label, name: @tourist_place.name, opening_hours: @tourist_place.opening_hours, phone_number: @tourist_place.phone_number, photo: @tourist_place.photo, website_url: @tourist_place.website_url } }
    assert_redirected_to tourist_place_url(@tourist_place)
  end

  test "should destroy tourist_place" do
    assert_difference("TouristPlace.count", -1) do
      delete tourist_place_url(@tourist_place)
    end

    assert_redirected_to tourist_places_url
  end
end
