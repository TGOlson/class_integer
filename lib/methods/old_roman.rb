def old_roman(number)
  string = ''
  string += 'M' * (number / 1000)
  string += 'D' * (number % 1000 / 500)
  string += 'C' * (number % 500 / 100)
  string += 'L' * (number % 100 / 50)
  string += 'X' * (number % 50 / 10)
  string += 'V' * (number % 10 / 5)
  string += 'I' * (number % 5 / 1)
  string
end