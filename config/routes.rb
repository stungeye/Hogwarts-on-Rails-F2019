# frozen_string_literal: true

Rails.application.routes.draw do
  resources :houses, only: %i[index show]
  # ^ This command creates the same routes as the following two:
  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show', id: /\d+/

  root to: 'houses#index'
end
