require "minitest/autorun"
require "pj"

class PjTest < Minitest::Test
  def test_analyse_array
    assert_equal "Number of elements: 2",
      PJ::analyse('[{"foo": 1}, {"bar": 2}]')
  end

  def test_analyse_hash
    assert_equal "Number of keys: 2",
      PJ::analyse('{"foo": 1, "bar": 2}')
  end
end
