Rails.application.routes.draw do
  devise_for :users
  
  # Dashboard route (requires authentication)
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Root route with conditional logic for authenticated users
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end
  
  # Defines the root path route ("/") for unauthenticated users
  root "home#index"
end
