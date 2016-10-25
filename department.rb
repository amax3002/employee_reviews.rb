require_relative './employee'
require_relative './review'

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

  def all_department_review_change(input)
    self.reviews.each do |el|
      el.status = input
    end
  end

  def one_employee_review_update(employee_id, input)
    self.employees.each do |element|
      if element.id != employee_id
        next
      else
        self.reviews.map! { |el|
          if input == "Positive"
            if(el.status == "" || el.status == "Negative")
              return el.status =input
            else
              el.status
            end
          elsif input == "Negative"
            if(el.status == "" || el.status == "Positive")
              return input
            else
              el.status
            end
          end
        }
      end
    end
  end


  def sum_department_salary
    sum_array = []
    sum_array = self.employees.map { |el| el.salary }
    sum_array = sum_array.inject(0) {|sum, i|  sum + i }
  end

  def show_every_employee_salary
    status_array = []
    status_array = self.employees.map { |el| el.review.status }
  end

  def salary_change_positive_status_employees(percent_increase)
    self.employees.map do |employee|
      employee.salary_change_if_positive_status(percent_increase)
    end
  end

  def change_employees_status_entire_department(status)
    self.employees.map do |employee|
      employee.review.change_status(status)
    end
  end


end
