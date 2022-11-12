require './person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super()
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  # instance method
  def play_hooky
    '¯\(ツ)/¯'
  end
end
