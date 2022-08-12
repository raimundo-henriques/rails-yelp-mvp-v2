Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [:create]
  end
end
