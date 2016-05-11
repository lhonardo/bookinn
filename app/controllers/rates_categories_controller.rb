class RatesCategoriesController < ApplicationController
  before_action :set_rates_category, only: [:show, :edit, :update, :destroy]

  # GET /rates_categories
  # GET /rates_categories.json
  def index
    @rates_categories = RatesCategory.all
  end

  # GET /rates_categories/1
  # GET /rates_categories/1.json
  def show
  end

  # GET /rates_categories/new
  def new
    @rates_category = RatesCategory.new
  end

  # GET /rates_categories/1/edit
  def edit
  end

  # POST /rates_categories
  # POST /rates_categories.json
  def create
    @rates_category = RatesCategory.new(rates_category_params)

    respond_to do |format|
      if @rates_category.save
        format.html { redirect_to @rates_category, notice: 'Rates category was successfully created.' }
        format.json { render :show, status: :created, location: @rates_category }
      else
        format.html { render :new }
        format.json { render json: @rates_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rates_categories/1
  # PATCH/PUT /rates_categories/1.json
  def update
    respond_to do |format|
      if @rates_category.update(rates_category_params)
        format.html { redirect_to @rates_category, notice: 'Rates category was successfully updated.' }
        format.json { render :show, status: :ok, location: @rates_category }
      else
        format.html { render :edit }
        format.json { render json: @rates_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rates_categories/1
  # DELETE /rates_categories/1.json
  def destroy
    @rates_category.destroy
    respond_to do |format|
      format.html { redirect_to rates_categories_url, notice: 'Rates category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rates_category
      @rates_category = RatesCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rates_category_params
      params.require(:rates_category).permit(:onepax, :twopax, :extra, :onepaxsp, :twopaxsp, :extrasp, :rooms_category_id, :rate_id)
    end
end
