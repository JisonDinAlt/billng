class TransferTypesController < ApplicationController
  before_action :set_transfer_type, only: [:show, :edit, :update, :destroy]

  def index
    @transfer_types = TransferType.all
  end

  def show
    @transfer_type = TransferType.find(params[:id])
  end

  def new
    @transfer_type = TransferType.new
  end

  def edit
  end

  def create
    @transfer_type = TransferType.new(transfer_type_params)
    @transfer_type.save
    redirect_to transfer_types_path
  end

  def update
    respond_to do |format|
      if @transfer_type.update(transfer_type_params)
        format.html { redirect_to @transfer_type, notice: 'Transfer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @transfer_type }
      else
        format.html { render :edit }
        format.json { render json: @transfer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transfer_type = TransferType.find(params[:id])
    @transfer_type.delete
    redirect_to transfer_types_path
  end

  private

    def set_transfer_type
      @transfer_type = TransferType.find(params[:id])
    end

    def transfer_type_params
      params.require(:transfer_type).permit(:pay_type, :lookup_code)
    end
end
