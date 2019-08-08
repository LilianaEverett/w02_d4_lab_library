class Customer

attr_reader :name
attr_accessor :books_borrowed

def initialize(name, books_borrowed)
  @name = name
  @books_borrowed = []
end

def get_number_of_books_borrowed
  return @books_borrowed.count
end

end
