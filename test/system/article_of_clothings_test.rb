require "application_system_test_case"

class ArticleOfClothingsTest < ApplicationSystemTestCase
  setup do
    @article_of_clothing = article_of_clothings(:one)
  end

  test "visiting the index" do
    visit article_of_clothings_url
    assert_selector "h1", text: "Article Of Clothings"
  end

  test "creating a Article of clothing" do
    visit article_of_clothings_url
    click_on "New Article Of Clothing"

    fill_in "Brand", with: @article_of_clothing.brand_id
    fill_in "Colour", with: @article_of_clothing.colour
    fill_in "Description", with: @article_of_clothing.description
    fill_in "Type of garment", with: @article_of_clothing.type_of_garment
    click_on "Create Article of clothing"

    assert_text "Article of clothing was successfully created"
    click_on "Back"
  end

  test "updating a Article of clothing" do
    visit article_of_clothings_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @article_of_clothing.brand_id
    fill_in "Colour", with: @article_of_clothing.colour
    fill_in "Description", with: @article_of_clothing.description
    fill_in "Type of garment", with: @article_of_clothing.type_of_garment
    click_on "Update Article of clothing"

    assert_text "Article of clothing was successfully updated"
    click_on "Back"
  end

  test "destroying a Article of clothing" do
    visit article_of_clothings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article of clothing was successfully destroyed"
  end
end
