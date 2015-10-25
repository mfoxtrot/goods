Goods::Application.routes.draw do

  devise_for :users
  root 'products#index'
  resources :products
end
