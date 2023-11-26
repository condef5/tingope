require "application_system_test_case"

class FoodPlacesTest < ApplicationSystemTestCase
  setup do
    @food_place = food_places(:one)
  end

  test "visiting the index" do
    visit food_places_url
    assert_selector "h1", text: "Food places"
  end

  test "should create food place" do
    visit food_places_url
    click_on "New food place"

    fill_in "Address", with: @food_place.address
    fill_in "Description", with: @food_place.description
    fill_in "Name", with: @food_place.name
    fill_in "Opening hours", with: @food_place.opening_hours
    fill_in "Phone number", with: @food_place.phone_number
    click_on "Create Food place"

    assert_text "Food place was successfully created"
    click_on "Back"
  end

  test "should update Food place" do
    visit food_place_url(@food_place)
    click_on "Edit this food place", match: :first

    fill_in "Address", with: @food_place.address
    fill_in "Description", with: @food_place.description
    fill_in "Name", with: @food_place.name
    fill_in "Opening hours", with: @food_place.opening_hours
    fill_in "Phone number", with: @food_place.phone_number
    click_on "Update Food place"

    assert_text "Food place was successfully updated"
    click_on "Back"
  end

  test "should destroy Food place" do
    visit food_place_url(@food_place)
    click_on "Destroy this food place", match: :first

    assert_text "Food place was successfully destroyed"
  end
end
