# frozen_string_literal: true

class ExternalApiProvider
  def self.get_admin_message(access_token)
    uri = URI("#{ENV.fetch('API_SERVER_URL', nil)}/api/messages/admin")
    api_response = Net::HTTP.get_response(
      uri,
      { 'Authorization' => "Bearer #{access_token}" }
    )

    parsed_response = JSON.parse(api_response.body).deep_symbolize_keys
    api_response.code == '200' ? Message.new(text: parsed_response[:text]) : Error.new(message: parsed_response[:message])
  end
end
