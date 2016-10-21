

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
    name_catch = []
    self.each do |names|
      if input == names.id
        name_catch << name.full_name
      end
    end
    name_catch
  end

end
