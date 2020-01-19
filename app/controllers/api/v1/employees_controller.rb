# frozen_string_literal: true

module Api
  module V1
    class EmployeesController < ApplicationController
      # GET /employees
      def index
        render json: :ok
      end

      # GET /employees/1
      def show
        render json: :ok
      end
    end
  end
end
