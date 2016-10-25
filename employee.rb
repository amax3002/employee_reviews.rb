class Employee

  attr_accessor :full_name, :email_address, :phone_number, :salary, :id, :review

  def initialize(full_name, email_address, phone_number, salary, id)
    @full_name = full_name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    @id = id
  end

  def change_salary_by_percent(change_amount_percent)
    self.salary = (self.salary * change_amount_percent)
    self.salary.to_i
  end


  def salary_change_if_positive_status(change_amount_percent)
    return unless review.status == "Positive"
    change_salary_by_percent(change_amount_percent)
  end

end
