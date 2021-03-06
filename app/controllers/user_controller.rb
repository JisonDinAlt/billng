class UserController < ApplicationController
  before_action :require_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @payments = @user.payments
    respond_to do |format|
      format.html
      format.csv { send_data User.to_csv, filename: "payments-#{Date.today}.csv"}
    end
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
    @user.destroy
    redirect_back(fallback_location: :user_id)
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
