module Api
  module V1
    class OfficesController < ApplicationController
      # GET /offices
      def index
        render json: :ok
      end

      # GET /offices/1
      def show
        render json: :ok
      end
    end
  end
end