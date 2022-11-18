require './person'

class Teacher < Person
  attr_accessor :specialization
  # constructor
  def initialize(*all, specialization)
    super(*all)
    @specialization = specialization
  end

  def self.create_teacher(age, name)
    print 'Specialization: '
    specialization = gets.chomp
    new(age, name, true, specialization)
  end

  def can_use_services
    true
  end
end
