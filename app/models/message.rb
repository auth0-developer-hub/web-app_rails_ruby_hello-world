# frozen_string_literal: true

class Message < ApplicationModel
  attr_accessor :text

  ADMIN = 'admin'
  PROTECTED = 'protected'
  PUBLIC = 'public'
end
