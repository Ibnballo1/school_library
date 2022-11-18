require_relative './entities/book'
require_relative './entities/teacher'
require_relative './entities/student'
require_relative './operations/rental'
require_relative './entities/person'
require 'json'
require_relative './data/user_input'
require_relative './data/user_output'

class App
  def initialize()
    @books = []
    @people = []
    @rentals = []
  end

  def run
    UserOutput.load_people(@people)
    UserOutput.load_books(@books)
    UserOutput.load_rentals(@rentals)
    user_input = 0
    puts "####\nWelcome to the School Library Ruby App!\n####"
    while user_input != '7'
      puts "Choose a number from the options below:\n"
      app_options
      print 'Enter Option [number]: '
      user_input = gets.chomp
      puts "\n\n"
      check_selection(user_input)
    end
    puts "Exiting, thanks for using this app!\n\n" if user_input == '7'
    UserInput.save_people(@people)
    UserInput.save_books(@books)
    UserInput.save_rentals(@rentals)
  end
end
