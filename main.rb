require './app.rb'

def options()
  lists = [
    "List all books", "List all people", "Create a person", "Create a book",
    "Create a rental", "List all rentals for a given person id", "Exit"
  ]
  1..7.times do |index|
    puts "#{index + 1} - #{lists[index]}"
  end
end

def what_to_choose
  your_choice = gets.chomp.to_i
  while your_choice != 7
    # what_to_choose()
    case your_choice
    when 1
      puts "You choose 1"
    when 2
      puts "You choose 2"
    when 3
      print "Do you want to create a student (1) or a teacher (2)? [input the number]: "
      choice_3 = gets.chomp.to_i
      if choice_3 == 1
        puts "You created a student"
      else
        puts "You created teacher"
      end
    when 4
      puts "You choose 4"
    when 5
      puts "You choose 5"
    when 6
      puts "You choose 6"
    else
      puts "Your choose a wrong number"  
    end
    options()
    your_choice = gets.chomp.to_i
  end
  puts "App exitted"
end

def main()
  puts "Welcome to School Library App!"
  puts "Please choose an option by entering a number"
  puts ""
  options()
  what_to_choose()
end

main()
