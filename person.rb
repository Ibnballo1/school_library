class Person
  # attribute accessor for getters and setters
  attr_accessor :id, :name, :age
  # constructor
  def initialize(name = 'unknown', age, parent_permission = true)
    @id = Random.rand(1..1000)
    @name= name
    @age = age
  end
  # private method

  private

  def is_of_age?
    if age >= 18
      true
    else
      false
    end
  end

  # public method
  def can_use_services?
    if age || parent_permission
      true
    end
  end

end