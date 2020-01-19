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
        render json: :ok
      end
    end
  end
end
