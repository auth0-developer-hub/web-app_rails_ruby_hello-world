# frozen_string_literal: true

class User < ApplicationModel
  attr_accessor :nickname, :name, :picture, :updated_at, :email, :email_verified, :sub
end
