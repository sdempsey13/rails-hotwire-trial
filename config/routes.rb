Rails.application.routes.draw do
  root "photos#index"

  devise_for :users

  resources :photos, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check

end
