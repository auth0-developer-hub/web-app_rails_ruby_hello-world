# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'protected', to: 'messages#protected'
  get 'public', to: 'messages#public'
  get 'admin', to: 'messages#admin'

  get 'profile', to: 'users#profile'

  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#server_error', via: :all
end
