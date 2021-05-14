Rails.application.routes.draw do
  root to: 'lists#index'
  get 'lists/404', to: 'lists#error'
  resources :lists, only: [:index ,:show, :create, :new, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
