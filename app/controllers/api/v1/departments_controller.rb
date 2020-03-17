# frozen_string_literal: true

module Api
  module V1
    class DepartmentsController < ApplicationController
      # GET /departments
      def index
        render json: :ok
      end

      # GET /departments/1
      def show
        department = Departments::Queries::SearchById.run!(id: params.dig(:id).to_i)
        department = Departments::Queries::Expand.run!(expand: params.dig(:expand), filtered_department: [department]) if params.dig(:expand).present?
        
        render json: department
      end
    end
  end
end
