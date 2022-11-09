# frozen_string_literal: true

Rails.application.routes.draw do
  resources :ticks
  resources :tickers
  get 'welcome/index'

  resources :articles do
    end

  root 'welcome#index'
end
