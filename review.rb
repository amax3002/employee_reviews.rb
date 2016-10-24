

class Review
  attr_accessor  :input, :status, :employee_id

  def initialize (input, employee_id)
    @input = input
    @employee_id = employee_id
    @status = nil
  end

  def find_status(id)
    if id == self.employee_id
      true
    end
  end

  def change_status(input)
    self.status = input
  end

  def change_status_by_id(id, input)
    if find_status(id)
      change_status(input)
    end
  end
end
