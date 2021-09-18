Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
    path_names: { sign_in: :login }
    resources :users, only: [:show, :update]
  end
  resources :items
  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
