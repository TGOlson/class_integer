def english_number(number)
  raise ArgumentError.new("Input be greater than or equal to 0.") if number < 0
  return 'zero' if number == 0
  string = ''

  extra = number

  while extra != 0

    factor = number.to_s.length - 1
    lead_digit = number / (10 ** factor)
    extra = number - (lead_digit * (10 ** factor))
    puts [number, lead_digit, factor, extra].inspect # test for loops

    if factor > 3
      puts lead_digit = number / (10 ** ((factor / 3) * 3))
      string += small_number(lead_digit - lead_digit % 10)
      string += ' ' + small_number(lead_digit % 10) if lead_digit % 10 != 0
      string += ' ' + hundreds(factor - (factor / 3))
      extra = number - (lead_digit * 10 ** ((factor / 3) * 3))
    end

    if factor > 1 && factor <= 3
      string += small_number(lead_digit) + ' ' + hundreds(factor)
    end

    if number < 100 && number >= 20
      string += small_number(number - extra)
    end

    if number < 20
      string += small_number(number)
      return string
    end

    number = extra
    string += ' '
  end
  
  string
end


def small_number(number)
  small_hash   = {  1 => 'one',        2 => 'two',       3 => 'three', 
                    4 => 'four',       5 => 'five',      6 => 'six', 
                    7 => 'seven',      8 => 'eight',     9 => 'nine',
                   11 => 'eleven',    12 => 'twelve',   13 => 'thirteen', 
                   14 => 'fourteen',  15 => 'fifteen',  16 => 'sixteen', 
                   17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
                   10 => 'ten',       20 => 'twenty',   30 => 'thirty', 
                   40 => 'fourty',    50 => 'fifty',    60 => 'sixty', 
                   70 => 'seventy',   80 => 'eighty',   90 => 'ninety'}
  small_hash[number]
end

def hundreds(number)
  hundred_hash = { 2 => 'hundred', 3 => 'thousand', 6 => 'million',
                   9 => 'billion', 12 => 'trillion'}
  hundred_hash[number]
end

puts english_number(0)
puts english_number(50)
puts english_number(517)
puts english_number(1003)
puts english_number(1999)
puts english_number(55720)
