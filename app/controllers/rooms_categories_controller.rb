class RoomsCategoriesController < ApplicationController
  before_action :set_rooms_category, only: [:show, :edit, :update, :destroy]

  # GET /rooms_categories
  # GET /rooms_categories.json
  def index
    @rooms_categories = RoomsCategory.all
  end

  # GET /rooms_categories/1
  # GET /rooms_categories/1.json
  def show
  end

  # GET /rooms_categories/new
  def new
    @rooms_category = RoomsCategory.new
  end

  # GET /rooms_categories/1/edit
  def edit
  end

  # POST /rooms_categories
  # POST /rooms_categories.json
  def create
    @rooms_category = RoomsCategory.new(rooms_category_params)

    respond_to do |format|
      if @rooms_category.save
        format.html { redirect_to @rooms_category, notice: 'Rooms category was successfully created.' }
        format.json { render :show, status: :created, location: @rooms_category }
      else
        format.html { render :new }
        format.json { render json: @rooms_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms_categories/1
  # PATCH/PUT /rooms_categories/1.json
  def update
    respond_to do |format|
      if @rooms_category.update(rooms_category_params)
        format.html { redirect_to @rooms_category, notice: 'Rooms category was successfully updated.' }
        format.json { render :show, status: :ok, location: @rooms_category }
      else
        format.html { render :edit }
        format.json { render json: @rooms_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms_categories/1
  # DELETE /rooms_categories/1.json
  def destroy
    @rooms_category.destroy
    respond_to do |format|
      format.html { redirect_to rooms_categories_url, notice: 'Rooms category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rooms_category
      @rooms_category = RoomsCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rooms_category_params
      params.require(:rooms_category).permit(:name)
    end
end
