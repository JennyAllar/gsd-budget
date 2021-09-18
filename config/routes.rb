# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'expenses#home'

  resources :expenses
end
