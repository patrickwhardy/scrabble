gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 8, Scrabble.new.score("hello")
  end

  def test_score_returns_0_for_nil
    assert_equal 0, Scrabble.new.score('')
    assert_equal 0, Scrabble.new.score(nil)
  end

end

# char_array.map |char|
# point_values(char.upcase)
# end.reduce(:+)
