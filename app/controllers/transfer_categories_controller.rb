class TransferCategoriesController < ApplicationController
  before_action :set_transfer_category, only: [:show, :edit, :update, :destroy]

  # GET /transfer_categories
  # GET /transfer_categories.json
  def index
    @transfer_categories = TransferCategory.all
  end

  # GET /transfer_categories/1
  # GET /transfer_categories/1.json
  def show
  end

  # GET /transfer_categories/new
  def new
    @transfer_category = TransferCategory.new
  end

  # GET /transfer_categories/1/edit
  def edit
  end

  # POST /transfer_categories
  # POST /transfer_categories.json
  def create
    @transfer_category = TransferCategory.new(transfer_category_params)

    respond_to do |format|
      if @transfer_category.save
        format.html { redirect_to @transfer_category, notice: 'Transfer category was successfully created.' }
        format.json { render :show, status: :created, location: @transfer_category }
      else
        format.html { render :new }
        format.json { render json: @transfer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transfer_categories/1
  # PATCH/PUT /transfer_categories/1.json
  def update
    respond_to do |format|
      if @transfer_category.update(transfer_category_params)
        format.html { redirect_to @transfer_category, notice: 'Transfer category was successfully updated.' }
        format.json { render :show, status: :ok, location: @transfer_category }
      else
        format.html { render :edit }
        format.json { render json: @transfer_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transfer_categories/1
  # DELETE /transfer_categories/1.json
  def destroy
    @transfer_category.destroy
    respond_to do |format|
      format.html { redirect_to transfer_categories_url, notice: 'Transfer category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer_category
      @transfer_category = TransferCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transfer_category_params
      params.require(:transfer_category).permit(:type_lookup_code, :category_name)
    end
end
