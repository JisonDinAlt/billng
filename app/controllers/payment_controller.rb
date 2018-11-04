class PaymentController < ApplicationController

  def new
    @payment = Payment.new
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def create
    @user = User.find(params[:id])
    @payment = @user.payments.create(payment_params)
    redirect_to :user_id
  end

  def destroy
    @user = User.find(params[:id])
    @payment = @user.payments.find(params[:id])
    @payment.delete
    redirect_to :user_id
  end

  private
    def payment_params
      params.require(:payment).permit(:amount, :amount_date, :description )
    end
end
