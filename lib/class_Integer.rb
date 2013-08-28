require './lib/methods/new_roman'
require './lib/methods/old_roman'
require './lib/methods/factorial'

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
    #needs to be created
  end
end