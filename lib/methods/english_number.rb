def english_number(number)
  raise ArgumentError.new("Input be greater than or equal to 0.") if number < 0
  return 'zero' if number == 0
  string = ''

  factor = number.to_s.length - 1

  if factor >= 2
    factor_check = 12 # start at trillions
    while factor_check > 0
      if factor >= factor_check
        lead_digits = (number % 10 ** (factor_check + 3)) / 10 ** factor_check
        string += parser(lead_digits) + ' ' + factors(factor_check) + ' '
      end
      factor_check -= 3
    end

    string += 'and ' if number % 1000 < 100
    string += parser(number % 1000) # last three digits
  else
    string += small_number(number)
  end
  
  string
end


def small_number(number) #number under 99
  string = ''
  small_hash   = {  1 => 'one',        2 => 'two',       3 => 'three', 
                    4 => 'four',       5 => 'five',      6 => 'six', 
                    7 => 'seven',      8 => 'eight',     9 => 'nine',
                   11 => 'eleven',    12 => 'twelve',   13 => 'thirteen', 
                   14 => 'fourteen',  15 => 'fifteen',  16 => 'sixteen', 
                   17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
                   10 => 'ten',       20 => 'twenty',   30 => 'thirty', 
                   40 => 'fourty',    50 => 'fifty',    60 => 'sixty', 
                   70 => 'seventy',   80 => 'eighty',   90 => 'ninety'}

  extra = number % 10
  return small_hash[number] if number < 20
  string += small_hash[number - extra] + ' ' if number >= 20
  string += small_hash[extra] if extra != 0 && number >= 20
  string
end

def parser(number) # decides is lead_digits needs to be processed as hundreds, or a small number
  string = ''
  string += hundreds(number) if number >= 100
  string += small_number(number) if number < 100
  string
end 

def hundreds(number)
  string = ''
  string += small_number(number / 100 )
  string += ' ' + factors(2)
  string += ' and ' + small_number(number % 100) if number % 100 != 0
  string
end

def factors(number) # number greater than or equal to 100
  hundred_hash = { 2 => 'hundred', 3 => 'thousand', 6 => 'million',
                   9 => 'billion', 12 => 'trillion'}
  hundred_hash[number]
end

puts english_number(10124)
puts english_number(10123424)
puts english_number(1014)
puts english_number(67101246)