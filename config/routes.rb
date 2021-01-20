# frozen_string_literal: true

Rails.application.routes.draw do
  resources :picks
  resources :teams
  resources :leagues
  resources :drafts
  root to: 'drafts#index'

  resources :picks do
    get :autocomplete_player_name, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
