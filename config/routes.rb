# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  # Auth0 routes
  scope :auth do
    get 'failure' => 'auth0#failure'

    scope :auth0 do
      get 'callback' => 'auth0#callback'
      get 'logout' => 'auth0#logout'
    end
  end

  get 'protected', to: 'messages#protected'
  get 'public', to: 'messages#public'
  get 'admin', to: 'messages#admin'

  get 'profile', to: 'users#profile'

  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#server_error', via: :all
end
