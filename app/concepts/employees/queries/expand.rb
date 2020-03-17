# frozen_string_literal: true

module Employees
  module Queries
    class Search < Employees::Base
      integer :expand
      integer :offset

      def execute
        employee_response.body
      end

      private

      def departments_list
        JSON.parse(File.read("#{Rails.root}/public/departments.json"))
      end
    end
  end
end
