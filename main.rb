require_relative 'app'

def app_options
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  puts "\n"
end

# rubocop:disable Metrics/CyclomaticComplexity
def check_selection(response)
  case response
  when '1'
    Book.list_all_books(@books)
  when '2'
    Person.list_all_people(@people)
  when '3'
    person = Person.create_person
    @people << person
    puts "#{person.name} created successfully" if @people.include?(person)
  when '4'
    book = Book.create_book
    @books << book
    puts "Book '#{book.title}' by #{book.author} created successfully" if @books.include?(book)
  when '5'
    rental = Rental.create_rental(@books, @people)
    @rentals << rental
    puts 'Rental created successfully' if @rentals.include?(rental)
  when '6'
    Rental.list_all_rentals_person_id(@people, @rentals)
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main
  app = App.new
  app.run
end

main
