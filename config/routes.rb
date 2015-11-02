Rails.application.routes.draw do

  post 'cart/add'

  ActiveAdmin.routes(self)
  devise_for :users

  root 'home#index'

  get 'meal/:id', to:'home#show_meal', as: 'show_meal'
  get 'restaurant/:id', to:'home#show_restaurant', as: 'show_restaurant'

end