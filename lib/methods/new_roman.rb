def new_roman(year)
  raise ArgumentError.new("Input be greater than 0.") if year < 1
  digits = year.to_s.split('').reverse
  new_roman = []
  nines_fours = [['IX','IV'], # ones
   			         ['XC','XL'], # tens
				         ['CM','CD']] # hundreds

  digits.each_with_index do |x,i|
    if x == "9"
      new_roman << nines_fours[i][0]
    elsif x == "4"
      new_roman << nines_fours[i][1]
    elsif x != 0
      new_roman << old_roman(x.to_i * (10 ** i))
    end
  end

  new_roman.reverse.join
end