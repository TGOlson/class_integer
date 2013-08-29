def english_number(number)
  raise ArgumentError.new("Input be greater than or equal to 0.") if number < 0
  return 'zero' if number == 0
  string = ''

  ones_hash = { 1 => 'one',   2 => 'two',   3 => 'three', 
  					    4 => 'four',  5 => 'five',  6 => 'six', 
  					    7 => 'seven', 8 => 'eight', 9 => 'nine'}

  teens_hash = { 11 => 'eleven',    12 => 'twelve',   13 => 'thirteen', 
  					     14 => 'fourteen',  15 => 'fifteen',  16 => 'sixteen', 
  					     17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

  tens_hash = { 10 => 'ten',     20 => 'twenty', 30 => 'thirty', 
  					    40 => 'fourty',  50 => 'fifty',  60 => 'sixty', 
  					    70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

  hundreds_hash = { 100 => 'hundred', 1000 => 'thousand', 1000000 => 'million',
  					        1000000000 => 'billion', 1000000000000 => 'trillion'}
extra = number

while extra != 0

  length = number.to_s.length
  factor = 10 ** (length - 1)
  lead = number / factor
  mag  = (number - (number % factor)) / lead
  extra = number - (lead * mag)
 # puts [number, lead, mag, extra].inspect - test for loops

  if number > 100  
    string += ones_hash[lead] + ' ' + hundreds_hash[mag]
  end

  if number < 100 && number > 19
    string += tens_hash[number - extra]
  end

    if number < 20 && number > 10
      string += teens_hash[number]
      return string
    end

    if number < 10
      string += ones_hash[number]
      return string
    end

  number = extra
  string += ' '
end
  
  string
end

#puts english_number(0)
#puts english_number(50)
#puts english_number(517)
#puts english_number(1003)
#puts english_number(1999)
#puts english_number(5720)
