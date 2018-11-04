class UserController < ApplicationController
  before_action :require_user, only: [:show]

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @payments = @user.payments
  end
  
  def show_by_date(start_date, end_date)
    @payments = @user.payments.select {|p| p.amount_date.between?(start_date, end_date)}
  end

  def show_summary_amount
    @summary_amount
    @user.payments.each {|a| @summary_amount += a.amount.to_f}
    return @summary_amount
  end
  
  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params) 
    if @user.save 
      session[:user_id] = @user.id 
      redirect_to '/index' 
    else 
      redirect_to '/signup' 
    end 
  end
  
  def edit
  end

  def update
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to '/index'
  end

  private 
  
    def user_params 
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end 
end
