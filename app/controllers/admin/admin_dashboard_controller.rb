class Admin::AdminDashboardController < ApplicationController
  before_action :authenticate_user!
  
  layout 'admin_dashboard'
  def index
  end
end
