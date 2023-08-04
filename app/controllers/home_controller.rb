# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @resources = HomeService.call
  end
end
