Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :art_pieces, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :show] do
    patch "accept", to: "bookings#accept"
    patch "decline", to: "bookings#declined"
  end
  resources :dashboards, only: :index
end
