require 'minitest/autorun'
require "minitest/pride"
require_relative './employee'
require_relative './department'


class EmployeeTest <Minitest::Test

  def test_employee_new_input_get_only_full_name
    new_employee = Employee.new(
    "Alex Guy",
    "IT",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000",
    "4454")
    assert_equal new_employee.full_name, "Alex Guy"
  end




end
