require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
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
    assert_equal expected, deck.card
  end

  def test_if_three_card_objects_are_passed
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")

    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

  def test_the_first_sort
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_4, card_2, card_3, card_1, card_5])

    expected = [card_1, card_3, card_2, card_5, card_4]
    assert_equal expected, deck.sort
  end
end
