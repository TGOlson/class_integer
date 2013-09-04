def english_number(number)
  raise ArgumentError.new("Input be greater than or equal to 0.") if number < 0
  return 'zero' if number == 0
  string = ''

  factor = number.to_s.length - 1

  if factor >= 2
    if factor >= 9 # add billions
      lead_digits = (number % 10 ** 12) / 10 ** 9
      string += parser(lead_digits) + ' ' + factors(9) + ' '
    end
    if factor >= 6 # add millions
      lead_digits = (number % 10 ** 9) / 10 ** 6
      string += parser(lead_digits) + ' ' + factors(6) + ' '
    end
    if factor >= 3 # add thousands
      lead_digits = (number % 10 ** 6) / 10 ** 3
      string += parser(lead_digits) + ' ' + factors(3) + ' '
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
  string += small_hash[number - extra] + ' ' if number != extra
  string += small_hash[extra] if extra != 0
  string
end

def parser(number)
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
