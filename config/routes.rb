Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dreams do
    resources :sleeps, only: [ :new, :create ]
  end
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
