# frozen_string_literal: true

module Employees
  module Queries
    class Search < Employees::Base
      integer :limit
      integer :offset

      def execute
        employee_response.body
      end

      private

      def employee_response
        Faraday.get("#{BIGCORP_API}limit=#{limit}&offset=#{offset}")
      end
    end
  end
end
