Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/', to: 'home#index', as: 'home'
  # resources :cards,  only: [:show, :index, :new, :create, :edit, :update]
  resources :cards
end
