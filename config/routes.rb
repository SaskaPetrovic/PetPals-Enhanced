Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "dashboard#index"
  resources :animals do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [] do
    member do
      patch 'accept'
      patch 'decline'
    end
  end
  get 'animals', to: 'animals#index', as: 'filtered_animals'
  get "up" => "rails/health#show", as: :rails_health_check
end
