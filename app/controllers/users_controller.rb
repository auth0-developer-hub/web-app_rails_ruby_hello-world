# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login

  def profile
    @user = User.new(user_params)
  end

  private

  def user_params
    current_user.slice(:nickname, :name, :picture, :updated_at, :email, :email_verified, :sub)
  end
end
