

class Department

  attr_accessor :department_names, :department_list

  def initialize
    @department_names = ["IT", "Human Resources", "Analyist", "Office Support"]
  end

  def list_of_department_names
    department_names.join(", ")
  end

end
