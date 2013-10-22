class ApplicationController < ActionController::Base

  before_filter :set_locale
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def forem_user
    current_user
  end
  helper_method :forem_user

  protect_from_forgery
end
