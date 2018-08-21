require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'

class Cardstest < Minitest::Test
  def test_if_it_exists
    card = Cards.new("Ace", "Spades")

    assert_instance_of Cards, card
  end

  def test_the_value
    card = Cards.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_the_suit
    card = Cards.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end

end
