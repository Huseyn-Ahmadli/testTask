# frozen_string_literal
module Api
  module V1
    class EmployeesController < ApplicationController
      skip_before_action :verify_authenticity_token
      def create
        @employee = Employee.new employee_params
        if @employee.save
          render json: { status: 'SUCCESS', message: 'Employee created successfully', data: @employee }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Employee creation failed', data: @employee.errors },
                 status: :unprocessable_entity
        end
      end

      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email)
      end
    end
  end
end

