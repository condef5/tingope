require "application_system_test_case"

class TouristPlacesTest < ApplicationSystemTestCase
  setup do
    @tourist_place = tourist_places(:one)
  end

  test "visiting the index" do
    visit tourist_places_url
    assert_selector "h1", text: "Tourist places"
  end

  test "should create tourist place" do
    visit tourist_places_url
    click_on "New tourist place"

    fill_in "Address", with: @tourist_place.address
    fill_in "Description", with: @tourist_place.description
    fill_in "Label", with: @tourist_place.label
    fill_in "Name", with: @tourist_place.name
    fill_in "Opening hours", with: @tourist_place.opening_hours
    fill_in "Phone number", with: @tourist_place.phone_number
    fill_in "Photo", with: @tourist_place.photo
    fill_in "Website url", with: @tourist_place.website_url
    click_on "Create Tourist place"

    assert_text "Tourist place was successfully created"
    click_on "Back"
  end

  test "should update Tourist place" do
    visit tourist_place_url(@tourist_place)
    click_on "Edit this tourist place", match: :first

    fill_in "Address", with: @tourist_place.address
    fill_in "Description", with: @tourist_place.description
    fill_in "Label", with: @tourist_place.label
    fill_in "Name", with: @tourist_place.name
    fill_in "Opening hours", with: @tourist_place.opening_hours
    fill_in "Phone number", with: @tourist_place.phone_number
    fill_in "Photo", with: @tourist_place.photo
    fill_in "Website url", with: @tourist_place.website_url
    click_on "Update Tourist place"

    assert_text "Tourist place was successfully updated"
    click_on "Back"
  end

  test "should destroy Tourist place" do
    visit tourist_place_url(@tourist_place)
    click_on "Destroy this tourist place", match: :first

    assert_text "Tourist place was successfully destroyed"
  end
end
