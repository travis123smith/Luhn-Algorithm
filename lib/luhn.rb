module Luhn
  def self.is_valid?(number)
    result = 0
    nums = number.to_s.reverse.split("")
    nums.each_with_index do |item, index|
    if index.odd?
       if item.to_i * 2 >= 10
          result += item.to_i * 2 - 9
         else 
          result += item.to_i * 2
       end
         else
          result += item.to_i
      end
    end
    
    return true if result % 10 == 0
     false
    end
end

