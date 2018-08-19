require 'pry'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck     = deck
    @guesses  = []
    @correct_guesses = []
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(prediction)
    response = "#{prediction[:value]} of #{prediction[:suit]}"
    guess = Guess.new(response, current_card)
    @guesses << guess

    if guess.correct? == true
      @correct_guesses << guess.feedback
    end
    return guess
  end

  def number_correct
    @correct_guesses.count
  end

end
