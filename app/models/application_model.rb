# frozen_string_literal: true

class ApplicationModel
  include ActiveModel::API

  def pretty_json
    as_json
  end
end
