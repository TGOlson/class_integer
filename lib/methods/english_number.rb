# Solution for Challenge: P1: Methods and Recursion - Numbers in Words. Started 2013-10-12T22:47:29+00:00
require_relative 'number_library'

def english_number(num)
  raise ArgumentError.new("Input be greater than or equal to 0.") if num < 0
  return 'one' if num == 1
  to_words_array = []
 
  NUM_WORD_PAIRS.each do |pair|
    if num > 99
      lead_digits = (num % (pair[0] * 1000)) / pair[0]
      to_words_array << english_number(lead_digits) if lead_digits > 0
    end
    to_words_array << pair[1] if (num / pair[0]) > 0
    num %= pair[0]
  end
 
  to_words_array.join(' ')
end