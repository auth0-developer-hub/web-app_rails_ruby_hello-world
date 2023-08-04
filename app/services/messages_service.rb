# frozen_string_literal: true

class MessagesService
  def self.call(message_type)
    Message.new(message_type)
  end
end
