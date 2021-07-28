class Admin::SubscriptionPlansController < ApplicationController
  before_action :authenticate_user!
  layout 'admin_dashboard'
  def index
    @subscriptions = SubscriptionPlan.all
  end
  
  def new
    @subscription = SubscriptionPlan.new
  end
  
    def create
      @subscription = SubscriptionPlan.new(subscription_params)
      if @subscription.save
        redirect_to admin_subscription_plans_path, :flash => { :success => "Plan Created Successfully" }
      else
        redirect_to new_admin_subscription_plan_path, :flash => { :success => "Plan Created Successfully" }
      end
    end

    def edit
        @subscription = SubscriptionPlan.find_by(id: params[:id])
    end

    def update
      @subscription = SubscriptionPlan.find_by(id: params[:id])
      if @subscription.update(subscription_params)
        redirect_to admin_subscription_plans_path, :flash => { :success => "Plan Updated Successfully" }
      else
        redirect_to new_admin_subscription_plan_path, :flash => {:error => "Something Went Wrong" }
      end
    end
    def destroy
      debugger
      @subscription = SubscriptionPlan.find_by(id: params[:id])
      @subscription.destroy
      redirect_to admin_subscription_plans_path, :flash => { :success => "Plan Delete Successfully" }

    end

    private
    def subscription_params
        params.require(:subscription_plan).permit(:plan_name, :price)
    end
end
