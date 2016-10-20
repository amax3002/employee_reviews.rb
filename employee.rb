

class Employee

  attr_accessor :full_name, :department, :email_address, :phone_number, :salary

  def initialize(full_name, department, email_address, phone_number, salary)
    @full_name = full_name
    @department = ""
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
  end

  def get_name
    @full_name
  end


  # def employee_information
  #   total = 0
  #   @cards.each do |card|
  #     total += card.turns_into_int
  #   end
  #   total
  # end


end
