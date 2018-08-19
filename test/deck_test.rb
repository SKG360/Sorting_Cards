require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'
require './lib/guess'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def test_if_three_card_objects_are_passed
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")

    deck = Deck.new([card_1, card_2, card_3])

    expected = [card_1, card_2, card_3]
    assert_equal expected, deck.cards
  end

  def test_if_three_card_objects_are_passed
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

end
