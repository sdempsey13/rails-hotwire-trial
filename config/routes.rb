Rails.application.routes.draw do
  root "photos#index"

  devise_for :users, controllers: {},
    skip: [:registrations, :passwords, :confirmations, :unlocks]

  resources :photos, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check

end
