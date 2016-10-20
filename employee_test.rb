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
    "75000"
    )
    assert_equal new_employee.employee_full_name, "Alex Guy"
  end

  def test_employee_new_input_see_all_info
    new_employees = [Employee.new(
    "Alex Guy",
    "IT",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    ),
    Employee.new(
    "Larry Guy",
    "HR",
    "alguy@gmail.com",
    "610-306-8347",
    "175000"
    )]
    assert_equal new_employees.employee_list, "Alex Guy"
  end



end
