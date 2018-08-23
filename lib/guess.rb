require 'pry'
require './lib/card'

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
