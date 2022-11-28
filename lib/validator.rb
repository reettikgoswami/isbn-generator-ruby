
module Validator

  def isbn13_valid?(isbn)
    unless isbn.length == 13 
      puts "ISBN-13 length must be 13"
      return false
    end
    isbn_no = isbn.to_i
    position_weightage = 1
    sum = 0
    
    while isbn_no > 0
      digit = isbn_no % 10
      sum += digit * position_weightage
      position_weightage = position_weightage == 3 ? 1 : 3
      isbn_no /= 10
    end
    
    return sum % 10 == 0 ? true : false

  end
  
end