require './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(*all, classroom)
    super(*all)
    @classroom = classroom
  end

  def self.create_student(age, name)
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    parent_permission = parent_permission.downcase == 'y'
    print 'Please enter a classroom: '
    classroom = gets.chomp
    new(age, name, parent_permission, classroom)
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
