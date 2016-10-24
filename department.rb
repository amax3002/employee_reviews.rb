require_relative './employee'
require_relative './review'

class Department

  attr_accessor :name, :employees, :reviews

  def initialize (name)
    @name = name
    @employees = []
    @reviews = []
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

  def assign_review(review)
    reviews << review
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


  def one_employee_salary_update(employee_id, salary_change)
    self.employees do |el|
      if el.id == employee_id
        el.salary = (el.salary.to_i * salary_change).to_s
        return el.salary
      end

    end


  end

  def employee_salary_update_department(salary_change)
    self.reviews.map { |element|
      if element.status == "Positive"
        self.employees.each do |el|
          el.salary = (el.salary.to_i * salary_change).to_s
          return el.salary
        end
      end
    }
  end

end
