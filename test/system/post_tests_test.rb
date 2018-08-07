require "application_system_test_case"

class PostTestsTest < ApplicationSystemTestCase
  setup do
    @post_test = post_tests(:one)
  end

  test "visiting the index" do
    visit post_tests_url
    assert_selector "h1", text: "Post Tests"
  end

  test "creating a Post test" do
    visit post_tests_url
    click_on "New Post Test"

    fill_in "Content", with: @post_test.content
    fill_in "Name", with: @post_test.name
    click_on "Create Post test"

    assert_text "Post test was successfully created"
    click_on "Back"
  end

  test "updating a Post test" do
    visit post_tests_url
    click_on "Edit", match: :first

    fill_in "Content", with: @post_test.content
    fill_in "Name", with: @post_test.name
    click_on "Update Post test"

    assert_text "Post test was successfully updated"
    click_on "Back"
  end

  test "destroying a Post test" do
    visit post_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post test was successfully destroyed"
  end
end
