
require_relative "./lib/book"

book1 = Book.new("Harry porter", "978014300723")

puts book1.update_isbn13_check_digit

