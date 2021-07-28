Rails.application.routes.draw do
  namespace :admin do
    resources :admin_dashboard do
      # get '/subscription_list', to: 'admin_dashboard#subscription_list'
    end
    # root to: "admin_dashboard#index", as: :authenticated_admin_root 
    resources :subscription_plans do
    
    end
  end
  devise_for :users
  #  root 'admin/admin_dashboard#index', :constraints => lambda { |request| request.env['warden'].user.try(:role) == "Admin"}, as: :authenticated_admin_root
  root to: "home#index"

  resource :home do
    collection do
      get '/about_us', to: 'home#about_us'
      get '/subscription_list', to: 'home#subscription_list'
    end
  end
  resources :user_dashboard
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
