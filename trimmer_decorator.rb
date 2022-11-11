require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    puts @nameable.correct_name.capitalize
  end
end
