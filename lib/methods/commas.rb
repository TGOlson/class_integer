def commas(number)
  number.to_s.gsub(/(?<=\d)(?=(?:\d{3})+\z)/, ',')
end