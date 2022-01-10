require "application_system_test_case"

class RabbitsTest < ApplicationSystemTestCase
  setup do
    @rabbit = rabbits(:one)
  end

  test "visiting the index" do
    visit rabbits_url
    assert_selector "h1", text: "Rabbits"
  end

  test "should create rabbit" do
    visit rabbits_url
    click_on "New rabbit"

    fill_in "Birthday", with: @rabbit.birthday
    fill_in "Description", with: @rabbit.description
    fill_in "Name", with: @rabbit.name
    click_on "Create Rabbit"

    assert_text "Rabbit was successfully created"
    click_on "Back"
  end

  test "should update Rabbit" do
    visit rabbit_url(@rabbit)
    click_on "Edit this rabbit", match: :first

    fill_in "Birthday", with: @rabbit.birthday
    fill_in "Description", with: @rabbit.description
    fill_in "Name", with: @rabbit.name
    click_on "Update Rabbit"

    assert_text "Rabbit was successfully updated"
    click_on "Back"
  end

  test "should destroy Rabbit" do
    visit rabbit_url(@rabbit)
    click_on "Destroy this rabbit", match: :first

    assert_text "Rabbit was successfully destroyed"
  end
end
