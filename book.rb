class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def self.create_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    Book.new(title, author)
  end

  def self.list_books(books)
    books.each do |book|
      puts "Title: #{book.title}"
      puts "Author: #{book.author}"
    end
  end

  def create_rental(person, date)
    Rental.new(date, self, person)
  end
end
