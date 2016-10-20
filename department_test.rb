require 'minitest/autorun'
require "minitest/pride"
require_relative './department'
require_relative './employee'

class DepartmentTest <Minitest::Test

  def test_department_name_input_has_IT_department
    it_department = Department.new("IT")
    assert_equal it_department.name, "IT"
  end

  def test_get_employee_names
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "",
    "alguy@gmail.com",
    "610-306-8347",
    "175000"
    )
    )

    names_only = it_department.employees.map { |el| el.full_name }
    assert_equal names_only, "Alex Guy"
  end


  # def test_add_employee_to_department_and_get_name
  #   departments = Department.new
  #   departments.put_employees_into_departments
  #
  #   assert_equal departments, ("Executive")
  # end


end
