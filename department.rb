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


  def find_employee_based_on_id(employee_id, input)
    emp = self.employees.find { |element|
      element.id == employee_id }
      self.reviews.map! { |el|
        if input == "Positive" && self.employees.include?(emp)
          if(el.status == "" || el.status == "Negative")
            return el.status = input
          else
            el.status
          end
        elsif input == "Negative" && self.employees.include?(emp)
          if(el.status == "" || el.status == "Positive")
            return el.status = input
          else
            el.status
          end
        end
      }
  end


  def one_employee_review_update(employee_id, input)
    self.employees.map! { |element|
      if element.id == employee_id
        self.reviews.map! { |el|
          if input == "Positive" && element.id == employee_id
            if(el.status == "" || el.status == "Negative")
              return el.status = input
            else
              el.status
            end
          elsif input == "Negative" && element.id == employee_id
            if(el.status == "" || el.status == "Positive")
              return el.status = input
            else
              el.status
            end
          else
            next
          end
        }
      end
    }
  end


  def one_employee_salary_update(employee_id, salary_change)
    self.employees.map { |element|
      if element.id == employee_id
        self.employees.map { |el|
          el.salary = (el.salary.to_i * salary_change).to_s
          return el.salary
        }
      end

    }
  end

  def employee_salary_update_department(salary_change)
    self.reviews.map { |element|
      if element.status == "Positive"
        self.employees.map { |el|
          el.salary = (el.salary.to_i * salary_change).to_s
          return el.salary
        }
      end

    }
  end

end
