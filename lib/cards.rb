class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def total_card_value
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
     suit_value = {"Clubs" => 100,
                    "Diamonds" => 200,
                    "Hearts" => 300,
                    "Spades" => 400}
                    
  end

end
