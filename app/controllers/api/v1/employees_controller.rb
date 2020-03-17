# frozen_string_literal: true
include MultipleParams

module Api
  module V1
    class EmployeesController < ApplicationController
      # GET /employees
      def index
        render json: Employees::Queries::Search.run!(limit: employees_params.dig(:limit).to_i, offset: employees_params.dig(:offset).to_i)
      end

      # GET /employees/1
      def show
        render json: Employees::Queries::SearchById.run!(id: employees_params.dig(:id).to_i)
      end



      private

      def employees_params
        MultipleParams.values(request, permit_params, 'expand')
      end

      def permit_params
        params.permit(:offset, :limit, :expand, :format)
      end
    end
  end
end
