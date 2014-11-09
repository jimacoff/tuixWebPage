class ApplicationController < ActionController::Base
	before_filter :asignar_idioma
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def asignar_idioma
  	I18n.locale = params[:locale] || I18n.default_locale
  end
end
