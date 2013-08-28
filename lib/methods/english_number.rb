#in progress

def english_number(number)

  ones_hash     = { 1 => 'one',   2 => 'two',   3 => 'three', 
  					4 => 'four',  5 => 'five',  6 => 'six', 
  					7 => 'seven', 8 => 'eight', 9 => 'nine'}

  teens_hash    = { 11 => 'eleven',    12 => 'twelve',   13 => 'thirteen', 
  					14 => 'fourteen',  15 => 'fifteen',  16 => 'sixteen', 
  					17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

  tens_hash     = { 10 => 'ten',     20 => 'twenty', 30 => 'thirty', 
  					40 => 'fourty',  50 => 'fifty',  60 => 'sixty', 
  					70 => 'seventy', 80 => 'eighty', 90 => 'ninety',}

  hundreds_hash = { 100 => 'hundred', 1000 => 'thousand', 1000000 => 'million'
  					1000000000 => 'billion', 1000000000000 => 'trillion'}

  ones_hash[number]
end

puts english_number(5)