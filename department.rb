require_relative './employee'

class Department

  attr_accessor :name, :employees

  def initialize (name)
    @name = name
    @employees = []
  end

  def names
    names = []
    @employees.each do |names|
      name.join(", ")
    end
  end

  def assign_employee(employee)
    employees << employee
  end

  def total_salary
    self.reduce(:+)
  end



end
