class HomeController < ApplicationController
  before_action :authenticated_admin_root
  layout 'home'
  def index
      
    end
  def about_us
    
  end

  def subscription_list
    @subs = SubscriptionPlan.all
  end
  # private

  def authenticated_admin_root
    if user_signed_in?
      if current_user.role.name == "Admin"
        redirect_to   admin_admin_dashboard_index_path
      end
      if current_user.role.name == "User"
        redirect_to user_dashboard_index_path
      end
    end
  end
end
