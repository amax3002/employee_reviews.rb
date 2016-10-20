require 'minitest/autorun'
require "minitest/pride"
require_relative './employee'

class EmployeeTest <Minitest::Test

  def test_employee_new_input_get_only_full_name
    new_employee = Employee.new(
    "Alex Guy",
    "IT",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    assert_equal new_employee.employee_full_name, "Alex Guy"
  end

  def test_employee_new_input_see_all_info
    new_employee = Employee.new(
    "Alex Guy",
    "IT",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    assert_equal new_employee, "Alex Guy"
  end



end
