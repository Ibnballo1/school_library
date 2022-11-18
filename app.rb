require './book'
require './teacher'
require './student'
require './rental'
require './person'
require 'json'
require './user_input'
require './user_output'

class App
  def initialize()
    puts "I am being created in the main.rb file"
  end

  def list_books(*books)
    all_book = Book.new(*books)
    all_book.*books
  end
end