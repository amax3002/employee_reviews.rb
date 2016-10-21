require 'minitest/autorun'
require "minitest/pride"
require_relative './department'
require_relative './employee'

class DepartmentTest <Minitest::Test

  def test_department_name_input_has_IT_department
    it_department = Department.new("IT")
    assert_equal it_department.name, "IT"
  end

  def test_get_department_name_after_inputing_new_employee
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )

    assert_equal it_department.name, "IT"
  end

  def test_get_employee_name
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )
    names_only = it_department.employees.map { |el| el.full_name }
    assert_equal names_only.join(", "), "Alex Guy"
  end

  def test_get_employee_salary
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )
    names_only = it_department.employees.map { |el| el.salary }
    assert_equal names_only.join(", "), "75000"
  end


  def test_get_employees_department
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    "175000"
    )
    )
    assert_equal it_department.name, "IT"
  end


  def test_get_depertment_total_salary
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    "75000"
    )
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    "175000"
    )
    )

    salary = it_department.employees.map { |el| el.salary }
    salary = salary.map(:to_i)
    assert_equal salary.reduce(:+), 250000
  end


end
