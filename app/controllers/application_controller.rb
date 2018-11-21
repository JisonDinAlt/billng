class ApplicationController < ActionController::Base
  before_action :set_locale
  helper_method :current_user


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_admin
    redirect_to '/no_access' unless current_user.admin?
  end

private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
