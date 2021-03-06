class PaymentsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @payments = @user.payments.all
    respond_to do |format|
      format.html
      format.csv { send_data @payments.to_csv, filename: "payments-#{Date.today}.csv"}
    end
  end

  def new
    @payment = Payment.new
  end

  def edit
    @user = User.find(params[:user_id])
    @payment = Payment.find(params[:id])
  end

  def show
      @user = User.find(params[:user_id])
      @payments = @user.payments.find(params[:id])
  end

  def show_by_date(start_date, end_date)
      @user = User.find(params[:user_id])
      @payments = @user.payments.find(params[:id])
      @pays_result = @payments.select {|p| p.amount_date.between?(start_date, end_date)}
  end

  def create
    @user = User.find(params[:user_id])
    @payment = @user.payments.create(payment_params)
    redirect_back(fallback_location: :user_id)
  end

  def destroy
    @user = User.find(params[:user_id])
    @payment = @user.payments.find(params[:payments_id])
    @payment.delete
    redirect_back(fallback_location: :user_id)
  end

  private
    def payment_params
      params.require(:payment).permit(:amount, :amount_date, :description, :pay_type, :pay_category )
    end

end
