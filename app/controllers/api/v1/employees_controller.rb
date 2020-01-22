# frozen_string_literal: true

module Api
  module V1
    class EmployeesController < ApplicationController
      # GET /employees
      def index
        response = Faraday.get(BIGCORP_API.to_s)
        render json: response.body
      end

      # GET /employees/1
      def show
        response = Faraday.get("#{BIGCORP_API}id=#{params.dig(:id)}")
        render json: response.body
      end
    end
  end
end
