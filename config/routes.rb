Rails.application.routes.draw do

  # get 'products/index'
  # get '/products', to:'products#index'
  # get '/products/new', to: 'products#new' , as: 'new_product'
  # post '/products', to: 'products#create'
  # get '/products/:id', to: 'products#show', as: 'product'
  # get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  # patch '/products/:id', to: 'products#update'
  # delete '/products/:id' , to: 'products#destroy'

  resources :products # only: [:index],  except: [:index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'products#index'
end
