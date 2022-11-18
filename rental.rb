require_relative '../entities/person'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end

  def self.create_rental(books, people)
    if books.empty?
      puts 'Please create a book first (option 4).'
    elsif people.empty?
      puts 'Please add a person first (option 3).'
    else
      puts 'Select a book from this list by number'
      books.each do |book|
        puts "#{books.find_index(book)} - #{book.title}"
      end
      selected_book = gets.to_i
      print 'Date: '
      date = gets.chomp
      puts 'Select a person from this list by number'
      people.each do |person|
        puts "#{people.find_index(person)} - #{person.name}"
      end
      selected_person = gets.to_i

      Rental.new(date, books[selected_book], people[selected_person])
    end
  end

  def self.list_all_rentals_person_id(people, rentals)
    Person.list_all_people(people)
    print 'Person ID: '
    person_id = gets.to_i
    puts(rentals.map do |rental|
      if rental.person.id == person_id
        "Rentals:\nDate: #{rental.date}  Book: #{rental.book.title}"
      else
        'No rentals found for this person'
      end
    end)
  end
end
