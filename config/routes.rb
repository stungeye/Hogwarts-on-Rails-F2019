# frozen_string_literal: true

Rails.application.routes.draw do
  get '/houses', to: 'houses#index'
  get '/houses/:id', to: 'houses#show', id: /\d+/

  root to: 'houses#index'
end
