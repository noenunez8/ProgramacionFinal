require "test_helper"

class ArticleOfClothingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_of_clothing = article_of_clothings(:one)
  end

  test "should get index" do
    get article_of_clothings_url
    assert_response :success
  end

  test "should get new" do
    get new_article_of_clothing_url
    assert_response :success
  end

  test "should create article_of_clothing" do
    assert_difference('ArticleOfClothing.count') do
      post article_of_clothings_url, params: { article_of_clothing: { brand_id: @article_of_clothing.brand_id, colour: @article_of_clothing.colour, description: @article_of_clothing.description, type_of_garment: @article_of_clothing.type_of_garment } }
    end

    assert_redirected_to article_of_clothing_url(ArticleOfClothing.last)
  end

  test "should show article_of_clothing" do
    get article_of_clothing_url(@article_of_clothing)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_of_clothing_url(@article_of_clothing)
    assert_response :success
  end

  test "should update article_of_clothing" do
    patch article_of_clothing_url(@article_of_clothing), params: { article_of_clothing: { brand_id: @article_of_clothing.brand_id, colour: @article_of_clothing.colour, description: @article_of_clothing.description, type_of_garment: @article_of_clothing.type_of_garment } }
    assert_redirected_to article_of_clothing_url(@article_of_clothing)
  end

  test "should destroy article_of_clothing" do
    assert_difference('ArticleOfClothing.count', -1) do
      delete article_of_clothing_url(@article_of_clothing)
    end

    assert_redirected_to article_of_clothings_url
  end
end
