class ArticleOfClothingsController < ApplicationController
  before_action :set_article_of_clothing, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /article_of_clothings or /article_of_clothings.json
  def index
    @article_of_clothings = ArticleOfClothing.all
    @article_of_clothings = @article_of_clothings.page(params[:page] || 10)
    @article_of_clothings = @article_of_clothings.order((params[:by] || "type_of_garment") + " " + (params[:order] || "asc"))


  end

  # GET /article_of_clothings/1 or /article_of_clothings/1.json
  def show
  end

  # GET /article_of_clothings/new
  def new
    @article_of_clothing = ArticleOfClothing.new
  end

  # GET /article_of_clothings/1/edit
  def edit
  end

  # POST /article_of_clothings or /article_of_clothings.json
  def create
    @article_of_clothing = ArticleOfClothing.new(article_of_clothing_params)

    respond_to do |format|
      if @article_of_clothing.save
        format.html { redirect_to @article_of_clothing, notice: "Article of clothing was successfully created." }
        format.json { render :show, status: :created, location: @article_of_clothing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_of_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_of_clothings/1 or /article_of_clothings/1.json
  def update
    respond_to do |format|
      if @article_of_clothing.update(article_of_clothing_params)
        format.html { redirect_to @article_of_clothing, notice: "Article of clothing was successfully updated." }
        format.json { render :show, status: :ok, location: @article_of_clothing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_of_clothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_of_clothings/1 or /article_of_clothings/1.json
  def destroy
    @article_of_clothing.destroy
    respond_to do |format|
      format.html { redirect_to article_of_clothings_url, notice: "Article of clothing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_of_clothing
      @article_of_clothing = ArticleOfClothing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_of_clothing_params
      params.require(:article_of_clothing).permit(:type_of_garment, :colour, :description, :brand_id)
    end
end
