Rails.application.routes.draw do
  resources :search, only: [:index]
  root to: "posts#index"

end
