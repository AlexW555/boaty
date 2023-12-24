require "application_system_test_case"

class BoatsTest < ApplicationSystemTestCase
  setup do
    @boat = boats(:one)
  end

  test "visiting the index" do
    visit boats_url
    assert_selector "h1", text: "Boats"
  end

  test "should create boat" do
    visit boats_url
    click_on "New boat"

    check "Available" if @boat.available
    check "Coxxed" if @boat.coxxed
    fill_in "Description", with: @boat.description
    fill_in "Distance", with: @boat.distance
    fill_in "Location", with: @boat.location
    fill_in "Name", with: @boat.name
    fill_in "Boat Type", with: @boat.boat_type
    click_on "Create Boat"

    assert_text "Boat was successfully created"
    click_on "Back"
  end

  test "should update Boat" do
    visit boat_url(@boat)
    click_on "Edit this boat", match: :first

    check "Available" if @boat.available
    check "Coxxed" if @boat.coxxed
    fill_in "Description", with: @boat.description
    fill_in "Distance", with: @boat.distance
    fill_in "Location", with: @boat.location
    fill_in "Name", with: @boat.name
    fill_in "Boat Type", with: @boat.boat_type
    click_on "Update Boat"

    assert_text "Boat was successfully updated"
    click_on "Back"
  end

  test "should destroy Boat" do
    visit boat_url(@boat)
    click_on "Destroy this boat", match: :first

    assert_text "Boat was successfully destroyed"
  end
end
