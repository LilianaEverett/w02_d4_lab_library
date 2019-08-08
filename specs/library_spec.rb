require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../library')
require_relative('../book')
require_relative('../customer')

class TestLibrary < Minitest::Test

def setup
  @book1 = Book.new('Harry Potter')
  @book2 = Book.new('Lord of the rings')
  @books = [@book1, @book2]
  @customer1 = Customer.new('John', 0)
  @library1 = Library.new('Edinburgh Library')

end

def test_get_library_name
  assert_equal('Edinburgh Library', @library1.name())
end

def test_get_library_number_of_books_in_catalogue
  assert_equal(0, @library1.count_books_catalogue())
end

def test_get_library_number_os_books_loan
  assert_equal(0, @library1.count_books_loan)
end

def test_add_books_to_catalogue
  @library1.add_books_to_catalogue(@book1)
  @library1.add_books_to_catalogue(@book2)
  assert_equal(2, @library1.count_books_catalogue)
end

def test_add_books_to_books_loan
  @library1.add_books_to_books_loan(@book1)
  @library1.add_books_to_books_loan(@book2)
  assert_equal(2, @library1.count_books_loan)
end

def test_loan_a_book_to_customer
  @library1.add_books_to_catalogue(@book1)
  @library1.add_books_to_catalogue(@book2)
  @library1.add_books_to_books_loan(@book1)
  assert_equal(2, @library1.count_books_catalogue)
  assert_equal(1, @library1.count_books_loan)

end

end
