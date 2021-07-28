class UserDashboardController < ApplicationController
    before_action :authenticate_user!
    layout 'user_dashboard'
    def index 
        
    end
end
