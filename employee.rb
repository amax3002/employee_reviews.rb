

class Employee

  attr_accessor :employee_full_name, :department, :email_address, :phone_number, :salary

  def initialize(employee_full_name, department, email_address, phone_number, salary)
    @employee_full_name = employee_full_name
    @department = department
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
  end

  def employee_information
    total = 0
    @cards.each do |card|
      total += card.turns_into_int
    end
    total
  end

end
