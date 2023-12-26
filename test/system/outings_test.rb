require "application_system_test_case"

class OutingsTest < ApplicationSystemTestCase
  setup do
    @outing = outings(:one)
  end

  test "visiting the index" do
    visit outings_url
    assert_selector "h1", text: "Outings"
  end

  test "should create outing" do
    visit outings_url
    click_on "New outing"

    fill_in "Boat", with: @outing.boat_id
    fill_in "Distance", with: @outing.distance
    fill_in "Outing Time", with: @outing.outing_time
    fill_in "User", with: @outing.user_id
    click_on "Create Outing"

    assert_text "Outing was successfully created"
    click_on "Back"
  end

  test "should update Outing" do
    visit outing_url(@outing)
    click_on "Edit this outing", match: :first

    fill_in "Boat", with: @outing.boat_id
    fill_in "Distance", with: @outing.distance
    fill_in "Outing Date", with: @outing.outing_time
    fill_in "User", with: @outing.user_id
    click_on "Update Outing"

    assert_text "Outing was successfully updated"
    click_on "Back"
  end

  test "should destroy Outing" do
    visit outing_url(@outing)
    click_on "Destroy this outing", match: :first

    assert_text "Outing was successfully destroyed"
  end
end
