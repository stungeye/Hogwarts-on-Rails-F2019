# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages

  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  resources :appointments, only: :index
  # get /appointments, to: 'appointments#index'

  resources :houses, only: %i[index show]
  # ^ This command creates the same routes as the following two:
  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show', id: /\d+/

  resources :students, only: :show
  # get '/students/:id', to: 'students#show', id: /\d+/

  root to: 'houses#index'
end
