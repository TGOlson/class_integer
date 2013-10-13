require './lib/class_Integer'

output = [1999.to_roman     == 'MCMXCIX',
          1999.to_old_roman == 'MDCCCCLXXXXVIIII',
          4.fact            == 24,
          1999.to_english   == 'one thousand nine hundred ninety nine',
          1999.add_commas   == '1,999']
p output