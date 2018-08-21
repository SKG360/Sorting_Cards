require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def cards
    @cards
  end

  def count
    @cards.size
  end
require "pry"; binding.pry
  def sort
    # switch = true
    # switched_array = []

    # while switch do
      # switch = false
      (count - 1).times do |index_position|
# =>    assign card_1 and card_2 to local variables
      first_card_value = @cards[index_position].total_card_value
      second_card_value = @cards[index_position +1].total_card_value
# =>    if first card is greater than second card
          if first_card_value > second_card_value
          # then switch the card positions
          @cards[index_position], @cards[index_position +1] = @cards[index_position +1], @cards[index_position]
  #       now the switch is successful
          # switch = true
          # binding.pry
          end
      end
      return @cards
  end

end
