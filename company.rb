
require_relative './employee'
require_relative './department'

module Company

  attr_accessor :department_names

  def initialize (department_name)
    @department_name = department_name
  end

  def list_of_department_names
    department_names.join(", ")
  end

  def add_new_department(new_department_name)
    department_names << new_department_name
  end

end




it_department = Department.new("IT")
it_department.put_employee_into_department(Employee.new(
"Alex Guy",
"IT",
"amax3002@gmail.com",
"610-308-0539",
"75000"
))

# our_reduce(it_department.employee_list.keys)
