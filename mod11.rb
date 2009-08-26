# Implementation of Mod 11 Check Digits
# Marshall Mickelson
# 
# References:
# http://www.ftpconsulting.com/checkdigit.htm

class Mod11
    
  def weight(number_of_digits)
    nextseq = 2
    number_of_digits.times do |x|
      yield nextseq
      nextseq += 1
      if nextseq > 7
         nextseq = 2
       end
    end
  end
end  
  
m = Mod11.new

m.weight(10){|x| puts x}

