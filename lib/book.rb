require_relative "./validator"
require_relative "./isbn13"

 class Book
  extend Validator
  extend Isbn13

  attr_accessor :name, :isbn

  def initialize(name, isbn)
    @name = name
    @isbn = isbn.to_s
  end

  def update_isbn13_check_digit
    check_digit = Book.isbn13_check_digit(@isbn)
    if check_digit
      @isbn = @isbn.to_s + check_digit
    end
    @isbn
  end

 end
