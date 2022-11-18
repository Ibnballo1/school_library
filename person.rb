require './nameable'

class Person < Nameable
  # attribute accessor for getters and setters
  attr_accessor :id, :name, :age, :book, :rentals, :parent_permission

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

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def self.create_person
    print 'Create a student (1) or a teacher (2)? [Enter the number]:'
    person_selected = gets.chomp.to_i
    if person_selected != 1 && person_selected != 2
      puts 'Invalid option'
    else
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp

      case person_selected
      when 1
        Student.create_student(age, name)
      when 2
        Teacher.create_teacher(age, name)
      end
    end
  end

  def self.list_people(people)
    if people.empty?
      'No people found, choose a different option to register a new person'
    else
      people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  # public method
  def can_use_services?
    of_age? || @parent_permission
  end

  # private method

  private

  def of_age?
    return true if @age >= 18
  end
end
