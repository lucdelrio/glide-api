# frozen_string_literal: true

module Api
  module V1
    class OfficesController < ApplicationController
      # GET /offices
      def index
        render json: :ok
      end

      # GET /offices/1
      def show
        office = Offices::Queries::SearchById.run!(id: params.dig(:id).to_i)
        render json: office
      end
    end
  end
end
