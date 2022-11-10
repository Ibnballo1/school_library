require "./person.rb"

class Student > Person
  def initialize(classroom)
    super()
    @classroom = classroom
  end

  #instance method
  def play_hooky
    "¯\(ツ)/¯"
  end
end