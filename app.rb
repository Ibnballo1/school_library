require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './rental'
require_relative './person'
require 'json'
require_relative './user_input'
require_relative './user_output'

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
