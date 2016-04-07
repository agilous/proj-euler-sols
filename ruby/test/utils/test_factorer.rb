require 'minitest/autorun'
require '../../utils/factorer'
require 'pry'

class TestFactorer < MiniTest::Test
  def test_initialization
    factorer = Factorer.new
    assert_equal factorer.factors_table, { }
  end

  def test_passing_nil
    factorer = Factorer.new
    assert_equal factorer.factor, nil
  end

  def test_zero_or_less
    factorer = Factorer.new(-1)
    assert_equal factorer.factor, nil
    factorer = Factorer.new(0)
    assert_equal factorer.factor, nil
  end

  def test_sample_factorization
    factorer = Factorer.new(5313)
    assert_equal factorer.factor, [1, 3, 7, 11, 21, 23, 33, 69, 77, 161, 231, 253, 483, 759, 1771, 5313]
  end

  def test_factorers_table
    factorer = Factorer.new(3)
    result_hash = {
      "1" => [1],
      "3" => [1, 3]
    }
    factorer.factor
    assert_equal result_hash, factorer.factors_table
  end
end
