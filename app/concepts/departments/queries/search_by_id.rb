# frozen_string_literal: true

module Departments
  module Queries
    class SearchById < ActiveInteraction::Base
      integer :id

      def execute
        departments_list.select { |department| department['id'] == id }
      end

      private

      def departments_list
        JSON.parse(File.read("#{Rails.root}/public/departments.json"))
      end
    end
  end
end
