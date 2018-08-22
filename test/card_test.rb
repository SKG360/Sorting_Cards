require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class Cardtest < Minitest::Test
  def test_if_it_exists
    card = Card.new("Ace", "Spades")

    assert_instance_of Card, card
  end

  def test_the_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_the_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end
end
