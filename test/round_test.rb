require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def test_if_deck_object_passes
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_if_the_guesses_array_is_empty
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_the_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_the_first_round_recorded_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_the_count_of_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 1, round.guesses.count
  end

  def test_the_firts_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_the_number_of_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})

    assert_equal 1, round.number_correct
  end

  def test_the_new_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    assert_instance_of Guess, round.record_guess({value: "Jack", suit: "Diamonds"})
  end

  def test_the_number_guesses_is_two
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 2, round.guesses.count
  end

  def test_the_guess_is_incorrect
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal "Incorrect.", round.guesses.last.feedback
  end

  def test_the_number_of_incorrect_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 1, round.number_correct
  end

  def test_the_number_of_incorrect_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck   = Deck.new([card_1, card_2])
    round  = Round.new(deck)

    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    assert_equal 50, round.percent_correct
  end

end
