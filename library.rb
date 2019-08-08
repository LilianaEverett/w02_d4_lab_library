class Library

attr_reader :name
attr_accessor :catalogue, :books_loan

def initialize(name)
  @name = name
  @catalogue = []
  @books_loan = []
end

def count_books_catalogue
  @catalogue.count
end

def count_books_loan
  @books_loan.count
end

def add_books_to_catalogue(book)
  @catalogue << book
end

def add_books_to_books_loan(book)
  @books_loan << book
end

def loan_a_book_to_customer(book)
  if @catalogue.include?(book)
    add_books_to_books_loan(book)
  end
end


end
