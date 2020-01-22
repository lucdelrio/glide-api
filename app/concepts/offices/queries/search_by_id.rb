# frozen_string_literal: true

module Offices
  module Queries
    class SearchById < ActiveInteraction::Base
      integer :id

      def execute
        offices_list.select { |office| office['id'] == id }
      end

      private

      def offices_list
        JSON.parse(File.read("#{Rails.root}/public/offices.json"))
      end
    end
  end
end
