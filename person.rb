class Person
  # attribute accessor for getters and setters
  attr_reader :id
  attr_accessor :name, :age

  # constructor
  def initialize(age, name = 'unknown', parent_permission = true) # rubocop:disable Lint/UnusedMethodArgument
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  # private method

  private

  def of_age?
    return true if age >= 18
  end

  # public method
  def can_use_services?
    return unless of_age || @parent_permission
  end
end
