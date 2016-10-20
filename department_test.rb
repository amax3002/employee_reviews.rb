require 'minitest/autorun'
require "minitest/pride"
require_relative './department'

class DepartmentTest <Minitest::Test

  def test_department_name_input
    new_name = Department.new("IT")
    assert_equal new_name.department_name, "IT"
  end






end
