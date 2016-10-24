

class Review
  attr_accessor  :input, :status

  def initialize (input, status)
    @input = input
    @status = status
  end

  def change_status(input)
    self.status = input
  end

end
