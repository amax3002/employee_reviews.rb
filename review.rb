

class Review
  attr_accessor  :input, :status, :employee_id

  def initialize (input, employee_id)
    @input = input
    @employee_id = employee_id
    @status = ""
  end

  def find_status(id)
    {}
  end

end
