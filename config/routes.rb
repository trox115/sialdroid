# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :services
    resources :notifications
    resources :announcements

    root to: 'users#index'
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/clientes/novo', to: 'clientes#new'
  post '/clientes/new', to: 'clientes#create'
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :notifications, only: [:index]
  resources :clientes
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
