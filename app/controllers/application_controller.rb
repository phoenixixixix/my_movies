class ApplicationController < ActionController::Base
  helper_method :current_user_admin?

  def current_user_admin?
    user_signed_in? && current_user.superadmin
  end

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.superadmin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end
end
