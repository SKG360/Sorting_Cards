require 'pry'

class Cards
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

    def card_value_getter
      card_value = { "2" => 2,
                  "3" => 3,
                  "4" => 4,
                  "5" => 5,
                  "6" => 6,
                  "7" => 7,
                  "8" => 8,
                  "9" => 9,
                  "10" => 10,
                  "Jack" => 11,
                  "Queen" => 12,
                  "King" => 13,
                  "Ace" => 14,
                      }
      end

      def suit_value_getter
       suit_value = {"Clubs" => 100,
                      "Diamonds" => 200,
                      "Hearts" => 300,
                      "Spades" => 400}
      end

      def total_card_value
        card_value_getter[@value] + suit_value_getter[@suit]
        # binding.pry
      end


end
