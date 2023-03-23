class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  stored_location = session[:return_to]
  session.delete(:return_to)
  stored_location || home_index_path
  stored_location_for(resource) || home_index_path
end
protected


  def configure_permitted_parameters
    attributes = [:state, :location, :usertype, :age, :experience, :name, :specialization, :degree, :profile]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

end
