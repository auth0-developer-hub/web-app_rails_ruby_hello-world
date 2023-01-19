# frozen_string_literal: true

class UsersController < ApplicationController
  def profile
    @user = User.new(
      nickname: 'Customer',
      name: 'One Customer',
      picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',
      updated_at: '2021-05-04T21:33:09.415Z',
      email: 'customer@example.com',
      email_verified: false,
      sub: 'auth0|12345678901234567890'
    )
  end
end
