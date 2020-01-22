# frozen_string_literal: true

class ApplicationController < ActionController::API
  BIGCORP_API = Rails.application.secrets.bigcorp_api
end
