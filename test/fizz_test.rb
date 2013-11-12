require_relative "test_helper"
require_relative "../fizz"

class FizzTest < Test::Unit::TestCase
  def test_process
    assert_equal "", subject("1")
    assert_equal "FIZZ", subject("3")
    assert_equal "", subject("5")
    assert_equal "FIZZ", subject("6")
    assert_equal "", subject("10")
  end

  private

  def subject(val)
    Fizz.process(val)
  end
end