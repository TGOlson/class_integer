OLD_ROMAN_ARRAY = [[1000, 'M'], 
                   [ 500, 'D'], 
                   [ 100, 'C'],  
                   [  50, 'L'],  
                   [  10, 'X'],   
                   [   5, 'V'],   
                   [   1, 'I']]

def old_roman(number)
  string = ''
  OLD_ROMAN_ARRAY.each do |pair|
    string += pair[1] * (number / pair[0])
    number %= pair[0]
  end
  string
end