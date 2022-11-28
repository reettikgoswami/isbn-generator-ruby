
module Isbn13

  def isbn13_check_digit(isbn) 
    
    unless isbn.length == 12 
      puts "ISBN length must be 12 to calculate check_digit"
      return false
    end
    
    isbn_no = isbn.to_i
    position_weightage = 3
    sum = 0

    while isbn_no > 0
      digit = isbn_no % 10
      sum += digit * position_weightage
      position_weightage = position_weightage == 3 ? 1 : 3
      isbn_no /= 10
    end

    sum %= 10
    check_digit = 10 - sum
    
    check_digit = 0 if check_digit == 10

    return check_digit.to_s
  end
  
  
end