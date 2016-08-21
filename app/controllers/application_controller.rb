class ApplicationController < ActionController::API

  #############################################################################
  # Authentication
  def authenticated_user
    # Check by order of importance/access
    current_admin || current_user
  end

end
