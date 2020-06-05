require('minitest/autorun')
require('minitest/reporters')

require_relative('../card')
require_relative('../card_game')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestCardGame < MiniTest::Test
  def setup()

    @card1 = Card.new("hearts", 10)
    @card2 = Card.new("diamonds", 7)
    @card3 = Card.new("spades", 5)
    @card4 = Card.new("clubs", 4)
    @card5 = Card.new("hearts", 1)

    @cards1 = [@card1, @card2, @card3, @card4]
    @cards2 = [@card5, @card3, @card1]
  end

  def test_check_for_ace_true
    assert_equal(true, CardGame.check_for_ace(@card5))
  end

  def test_for_ace_false
    assert_equal(false, CardGame.check_for_ace(@card1))
    assert_equal(false, CardGame.check_for_ace(@card2))
    assert_equal(false, CardGame.check_for_ace(@card3))
    assert_equal(false, CardGame.check_for_ace(@card4))
  end

  def test_highest_card
    assert_equal(@card1, CardGame.highest_card(@card1, @card2))
    assert_equal(@card3, CardGame.highest_card(@card3, @card4))
    assert_equal(@card4, CardGame.highest_card(@card4, @card5))
  end

  def test_cards_total
    assert_equal("You have a total of 26", CardGame.cards_total(@cards1))
    assert_equal("You have a total of 16", CardGame.cards_total(@cards2))
  end

end
