require 'minitest/autorun'
require "minitest/pride"
require_relative './department'

class DepartmentTest <Minitest::Test

  def test_department_name_input
    new_department_name = Department.new
    assert new_department_name.list_of_department_names.include?("IT")
  end

  def test_produce_origonal_list_of_departments

  end



end
