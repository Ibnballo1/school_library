require './person'

class Teacher < Person
  # constructor
  def initialize(specialization)
    super()
    @specialization = specialization
  end

  def can_use_services
    true
  end
end