require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../customer')

class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new('Liliana', 0)
  end

  def test_get_customer_name
    assert_equal('Liliana', @customer1.name)
  end

  def test_books_borrowed
    assert_equal(0, @customer1.get_number_of_books_borrowed)
  end


end
