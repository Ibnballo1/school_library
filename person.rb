require './nameable'

class Person < Nameable
  # attribute accessor for getters and setters
  attr_accessor :id, :name, :age
  attr_reader :rentals

  # constructor
  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  # public method
  def can_use_services?
    return unless of_age || @parent_permission
  end

  # private method

  private

  def of_age?
    return true if @age >= 18
  end
end
