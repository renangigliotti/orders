Vidracaria::Application.routes.draw do
  
  devise_for :users
  
  resources :orders do
    resources :items
  end  
  
  resources :customers
  resources :products
  resources :items
  
  root :to => 'orders#index'  
end
