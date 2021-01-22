require "application_system_test_case"

class SignUpsTest < ApplicationSystemTestCase
  setup do
    @sign_up = sign_ups(:one)
  end

  test "visiting the index" do
    visit sign_ups_url
    assert_selector "h1", text: "Sign Ups"
  end

  test "creating a Sign up" do
    visit sign_ups_url
    click_on "New Sign Up"

    fill_in "Email", with: @sign_up.email
    fill_in "Password", with: @sign_up.password
    fill_in "Username", with: @sign_up.username
    click_on "Create Sign up"

    assert_text "Sign up was successfully created"
    click_on "Back"
  end

  test "updating a Sign up" do
    visit sign_ups_url
    click_on "Edit", match: :first

    fill_in "Email", with: @sign_up.email
    fill_in "Password", with: @sign_up.password
    fill_in "Username", with: @sign_up.username
    click_on "Update Sign up"

    assert_text "Sign up was successfully updated"
    click_on "Back"
  end

  test "destroying a Sign up" do
    visit sign_ups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sign up was successfully destroyed"
  end
end
