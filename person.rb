class Person
  # attribute accessor for getters and setters
  attr_accessor :id, :name, :age

  # constructor
  def initialize(age, name = 'unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  # private method

  private

  def is_of_age?
    return true if age >= 18
  end

  # public method
  def can_use_services?
    return unless is_of_age || @parent_permission
  end
end
