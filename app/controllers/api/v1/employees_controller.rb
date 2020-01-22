# frozen_string_literal: true

module Api
  module V1
    class EmployeesController < ApplicationController
      # GET /employees
      def index
        render json: Employees::Queries::Search.run!(limit: params.dig(:limit).to_i, offset: params.dig(:offset).to_i)
      end

      # GET /employees/1
      def show
        render json: Employees::Queries::SearchById.run!(id: params.dig(:id).to_i)
      end
    end
  end
end
