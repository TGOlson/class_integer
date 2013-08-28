require './lib/methods/new_roman'
require './lib/methods/old_roman'
require './lib/methods/factorial'
require './lib/methods/english_number'

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
    english_number(self) #in progress
  end
end