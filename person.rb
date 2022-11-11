require './nameable'
require './capitalize_decorator'
require './trimmer_decorator.rb'

class Person < Nameable
  # attribute accessor for getters and setters
  attr_accessor :id, :name, :age

  # constructor
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    return @name
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

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
capitalizedTrimmedPerson.correct_name
