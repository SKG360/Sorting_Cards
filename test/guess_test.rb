require 'minitest/autorun'
require 'minitest/pride'
require './lib/cards'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test
  def test_if_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_the_card_class
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal card, guess.card
  end

  def test_the_card_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end

  def test_the_correct_guess
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert true, guess.correct?
  end

  def test_if_the_feedback_puts_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_if_the_new_guesses_are_handled_correctly
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal card, guess.card
  end

  def test_if_the_response_is_two_of_diamonds
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "2 of Diamonds", guess.response
  end

  def test_if_the_response_is_false
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    refute guess.correct?
  end

  def test_if_the_response_is_false
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect.", guess.feedback
  end

end
