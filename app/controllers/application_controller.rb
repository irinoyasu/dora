class ApplicationController < ActionController::Base
  protected

  def after_sign_up_path_for(_resource)
    carriers_path # replace with your carriers list path
  end

  def after_sign_in_path_for(_resource)
    carriers_path # replace with your carriers list path
  end
end
