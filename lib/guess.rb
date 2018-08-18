require 'pry'
require './lib/cards'

class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    prediction = "#{card.value} of #{card.suit}"
      if @response == prediction
        return true
      else
        return false
      end

  end

  def feedback
    if correct? == true
      p "Correct!"
    else
      p "Incorrect."
    end
  end

end

# card = Cards.new("10", "Hearts")
# guess = Guess.new("10 of Hearts", card)
#
# p guess.gogo
