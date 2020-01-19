# frozen_string_literal: true

module Api
  module V1
    class EmployeesController < ApplicationController
      BIGCORP_API = Rails.application.secrets.bigcorp_api

      # GET /employees
      def index
        response = HTTParty.get("#{BIGCORP_API}id=#{params.dig(:id)}")
        render json: response.body
      end

      # GET /employees/1
      def show
        response = HTTParty.get("#{BIGCORP_API}id=#{params.dig(:id)}")
        render json: response.body
      end

      private

      def brand_params
        params.permit(:id)
      end
    end
  end
end
