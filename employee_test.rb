require 'minitest/autorun'
require "minitest/pride"
require_relative './employee'
require_relative './department'


class EmployeeTest <Minitest::Test

  def test_employee_new_input_get_only_full_name
    new_employee = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000",
    "4454")
    assert_equal new_employee.full_name, "Alex Guy"
  end

  def test_get_employee_name_based_on_id
    new_employee = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    assert_equal new_employee.get_name_based_on_id("4454"), "Alex Guy"
  end

  def test_get_employee_name_based_on_id
    new_employee = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    assert_equal new_employee.get_salary_based_on_id("4454"), 75000
  end

  def test_change_salary_by_percent
    new_employee = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    assert_equal new_employee.change_salary_by_percent(1.05), 78750
  end





end
