# frozen_string_literal: true

module Employees
  class Base < ActiveInteraction::Base
    BIGCORP_API = Rails.application.secrets.bigcorp_api
  end
end
