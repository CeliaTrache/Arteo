Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :art_pieces, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :destroy

  resources :bookings, only: [:edit, :show]
    patch "dashboard", to: "bookings#accept"

  resources :dashboards, only: :index
end
