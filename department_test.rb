require 'minitest/autorun'
require "minitest/pride"
require_relative './department'
require_relative './employee'
require_relative './review'
require 'pry'

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
    75000,
    "4454")
    )

    assert_equal it_department.name, "IT"
  end

  def test_get_employee_name
    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
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
    75000,
    "4454")
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
    75000,
    "4454")
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    )
    assert_equal it_department.name, "IT"
  end

  def test_get_employees_id

    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    )
    ids = it_department.employees.map { |el| el.id }
    assert_equal ids.join(", "), "4454, 6789"
  end

  def test_get_depertment_total_salary

    it_department = Department.new("IT")
    it_department.assign_employee(Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    )

    it_department.assign_employee(
    Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    )

    assert_equal it_department.sum_department_salary, 250000
  end

  def test_change_all_employees_salary_if_status_positive
    it_department = Department.new("IT")

    alex = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    alex.review = Review.new("Alex is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")
    it_department.assign_employee(alex)

    larry = Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    larry.review = Review.new("Larry is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")\

    it_department.assign_employee(larry)

    it_department.salary_change_positive_status_employees(1.05)

    assert_equal it_department.sum_department_salary, 262500.0
  end

  def test_change_all_employees_status
    it_department = Department.new("IT")

    alex = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    alex.review = Review.new("Alex is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")
    it_department.assign_employee(alex)

    larry = Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    larry.review = Review.new("Larry is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")\

    it_department.assign_employee(larry)

    it_department.change_employees_status_entire_department("Negative")

    assert_equal it_department.show_every_employee_salary, ["Negative", "Negative"]
  end

  def test_change_one_employees_status_by_id
    it_department = Department.new("IT")

    alex = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")
    alex.review = Review.new("Alex is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")
    it_department.assign_employee(alex)

    larry = Employee.new(
    "Larry Guy",
    "alguy@gmail.com",
    "610-306-8347",
    175000,
    "6789")
    larry.review = Review.new("Larry is a very positive person and encourages those around him, but he has not done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")\

    it_department.assign_employee(larry)

    it_department.change_employees_status_by_id("4454", "Negative")

    assert_equal it_department.show_every_employee_salary, ["Negative", "Positive"]
  end

end
