require "application_system_test_case"

class IssuesTest < ApplicationSystemTestCase
  setup do
    @issue = issues(:one)
  end

  test "visiting the index" do
    visit issues_url
    assert_selector "h1", text: "Issues"
  end

  test "creating a Issue" do
    visit issues_url
    click_on "New Issue"

    fill_in "Article of clothing", with: @issue.article_of_clothing_id
    fill_in "Date of issue", with: @issue.date_of_issue
    fill_in "Program", with: @issue.program_id
    fill_in "Program number", with: @issue.program_number
    click_on "Create Issue"

    assert_text "Issue was successfully created"
    click_on "Back"
  end

  test "updating a Issue" do
    visit issues_url
    click_on "Edit", match: :first

    fill_in "Article of clothing", with: @issue.article_of_clothing_id
    fill_in "Date of issue", with: @issue.date_of_issue
    fill_in "Program", with: @issue.program_id
    fill_in "Program number", with: @issue.program_number
    click_on "Update Issue"

    assert_text "Issue was successfully updated"
    click_on "Back"
  end

  test "destroying a Issue" do
    visit issues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issue was successfully destroyed"
  end
end
