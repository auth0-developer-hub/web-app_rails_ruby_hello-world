# frozen_string_literal: true

class MessagesController < ApplicationController
  def public
    @message = MessagesService.call(Message::PUBLIC)
  end

  def protected
    @message = MessagesService.call(Message::PROTECTED)
  end

  def admin
    @message = MessagesService.call(Message::ADMIN)
  end
end
