# frozen_string_literal: true

module Employees
  module Queries
    class SearchById < Employees::Base
      integer :id

      def execute
        employee_response.body
      end

      private

      def employee_response
        Faraday.get("#{BIGCORP_API}id=#{id}")
      end
    end
  end
end
