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
        render json: department
      end
    end
  end
end
