class TransferTypesController < ApplicationController
  def index
    @transfer_types = TransferType.all
  end

  def show
    @transfer_type = TransferType.find(params[:id])
  end

  def create
    @transfer_type = TransferType.new(transfer_type_params)
    @transfer_type.save
    redirect_to transfer_types_path
  end

  def destroy
    @transfer_type = TransferType.find(params[:id])
    @transfer_type.delete
    redirect_to transfer_types_path
  end

  private

    def transfer_type_params
      params.require(:transfer_type).permit(:pay_type, :lookup_code)
    end
end
