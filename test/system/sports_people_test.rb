require "application_system_test_case"

class SportsPeopleTest < ApplicationSystemTestCase
  setup do
    @sports_person = sports_people(:one)
  end

  test "visiting the index" do
    visit sports_people_url
    assert_selector "h1", text: "Sports People"
  end

  test "creating a Sports person" do
    visit sports_people_url
    click_on "New Sports Person"

    fill_in "Avatar", with: @sports_person.avatar
    fill_in "Name", with: @sports_person.name
    fill_in "Team", with: @sports_person.team
    click_on "Create Sports person"

    assert_text "Sports person was successfully created"
    click_on "Back"
  end

  test "updating a Sports person" do
    visit sports_people_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @sports_person.avatar
    fill_in "Name", with: @sports_person.name
    fill_in "Team", with: @sports_person.team
    click_on "Update Sports person"

    assert_text "Sports person was successfully updated"
    click_on "Back"
  end

  test "destroying a Sports person" do
    visit sports_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sports person was successfully destroyed"
  end
end
