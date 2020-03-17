x# frozen_string_literal: true

module Departments
  module Queries
    class Expand < Employees::Base
      string :expand
      array  :filtered_department
      
      def execute
        byebug
        department = filtered_department.first
        department['superdepartment'] = superdepartment(department)
        department['superdepartment']['superdepartment'] = superdepartment(department['superdepartment'])
        department
      end

      private

      def departments_list
        JSON.parse(File.read("#{Rails.root}/public/departments.json"))
      end

      def superdepartment department
        Departments::Queries::SearchById.run!(id: department['superdepartment'])
      end
    end
  end
end
