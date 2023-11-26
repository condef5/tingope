require "test_helper"

class FoodPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_place = food_places(:one)
  end

  test "should get index" do
    get food_places_url
    assert_response :success
  end

  test "should get new" do
    get new_food_place_url
    assert_response :success
  end

  test "should create food_place" do
    assert_difference("FoodPlace.count") do
      post food_places_url, params: { food_place: { address: @food_place.address, description: @food_place.description, name: @food_place.name, opening_hours: @food_place.opening_hours, phone_number: @food_place.phone_number } }
    end

    assert_redirected_to food_place_url(FoodPlace.last)
  end

  test "should show food_place" do
    get food_place_url(@food_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_place_url(@food_place)
    assert_response :success
  end

  test "should update food_place" do
    patch food_place_url(@food_place), params: { food_place: { address: @food_place.address, description: @food_place.description, name: @food_place.name, opening_hours: @food_place.opening_hours, phone_number: @food_place.phone_number } }
    assert_redirected_to food_place_url(@food_place)
  end

  test "should destroy food_place" do
    assert_difference("FoodPlace.count", -1) do
      delete food_place_url(@food_place)
    end

    assert_redirected_to food_places_url
  end
end
