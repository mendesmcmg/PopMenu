Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :restaurant_menus, only: [:index, :show]
  resources :menu_items, only: [:index, :show]
  resources :restaurants, only: [:index, :show] do
    member do
      get :restaurant_menus_and_items
    end
  end
end
