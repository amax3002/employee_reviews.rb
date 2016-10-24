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

  def test_add_review
    new_employee = Employee.new(
    "Alex Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")

    new_employee.review =
      Review.new("Larry Guy is not a very positive person and encourages those around him, but he has done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")


    assert_equal new_employee.get_review_status, "Positive"
  end

  def test_salary_increase_if_positive

    new_employee = Employee.new(
    "Larry Guy",
    "amax3002@gmail.com",
    "610-308-0539",
    75000,
    "4454")

    new_employee.review =
      Review.new("Larry Guy is not a very positive person and encourages those around him, but he has done well technically this year. There are two areas in which Zeke has room for improvement. First, when communicating verbally (and sometimes in writing), he has a tendency to use more words than are required. This conversational style does put people at ease, which is valuable, but it often makes the meaning difficult to isolate, and can cause confusion. Second, when discussing new requirements with project managers, less of the information is retained by Zeke long-term than is expected. This has a few negative consequences: 1) time is spent developing features that are not useful and need to be re-run, 2) bugs are introduced in the code and not caught because the tests lack the same information, and 3) clients are told that certain features are complete when they are inadequate. This communication limitation could be the fault of project management, but given that other developers appear to retain more information, this is worth discussing further.", "Positive")

    new_employee.salary_change_if_positive_status(1.05)
    assert_equal new_employee.salary, 78750
  end




end
