

class Employee

  attr_accessor :full_name, :email_address, :phone_number, :salary, :id

  def initialize(full_name, email_address, phone_number, salary, id)
    @full_name = full_name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    @id = id
  end

  def get_name_based_on_id(input)
      if input == self.id
        full_name
      end
  end

  def get_salary_based_on_id(input)
      if input == self.id
        salary
      end
  end

  def change_salary_by_percent(change_amount_percent)
    self.salary = (self.salary * change_amount_percent)
    self.salary.to_i
  end

end
