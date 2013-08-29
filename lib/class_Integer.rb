require './methods/new_roman'
require './methods/old_roman'
require './methods/factorial'
require './methods/english_number'

class Integer
  def to_roman
    new_roman(self)
  end

  def to_old_roman
    old_roman(self)
  end

  def fact
  	factorial(self)
  end

  def to_english
    english_number(self)
  end
end