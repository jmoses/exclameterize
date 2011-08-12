$: << "../lib/"

require 'test/unit'
require "exclameterize"

class ExclameterizeTest < Test::Unit::TestCase
  def test_it
    assert_equal "test_with_end", "test".exclameterize("with_end")
    assert_equal "test_with_end!", "test!".exclameterize("with_end")
    assert_equal "test", "test_with_end".unexclameterize("with_end")
    assert_equal "test!", "test_with_end!".unexclameterize("with_end")
  end
end
