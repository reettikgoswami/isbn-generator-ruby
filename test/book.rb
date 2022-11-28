require_relative '../lib/book'

require 'minitest/autorun'

class BookTest < Minitest::Test

  def test_isbn13_check_digit_value
    assert_equal Book.isbn13_check_digit("978074327356"), "5"
    assert_equal Book.isbn13_check_digit("978064256401"), "6"
    assert_equal Book.isbn13_check_digit("978064255876"), "3"
    assert_equal Book.isbn13_check_digit("978064255623"), "3"
    assert_equal Book.isbn13_check_digit("978064255731"), "5"
    assert_equal Book.isbn13_check_digit("978060632345"), "1"
    assert_equal Book.isbn13_check_digit("978060641520"), "0"
  end


  def test_updated_book_isbn_number
    assert_equal Book.new("HP1", "978074327356").update_isbn13_check_digit, "9780743273565"
    assert_equal Book.new("HP2", "978064256401").update_isbn13_check_digit, "9780642564016"
    assert_equal Book.new("HP3", "978064255876").update_isbn13_check_digit, "9780642558763"
    assert_equal Book.new("HP4", "978064255623").update_isbn13_check_digit, "9780642556233"
    assert_equal Book.new("HP5", "978064255731").update_isbn13_check_digit, "9780642557315"
    assert_equal Book.new("HP6", "978060632345").update_isbn13_check_digit, "9780606323451"
    assert_equal Book.new("HP7", "978060641520").update_isbn13_check_digit, "9780606415200"
  end

end