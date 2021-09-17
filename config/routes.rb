Rails.application.routes.draw do
  devise_for :users
  root "prototypes#index"
  resources :users, only: [:new, :create, :destroy, :show]
  resources :prototypes do
    resources :comments, only: [:create]
  end

end
