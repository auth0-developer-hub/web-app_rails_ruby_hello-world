# frozen_string_literal: true

class MessagesService
  def self.call(message_type, access_token = nil)
    if message_type == Message::ADMIN
      ExternalApiProvider.get_admin_message(access_token)
    else
      Message.new(text: "This is a #{message_type} message.")
    end
  end
end
