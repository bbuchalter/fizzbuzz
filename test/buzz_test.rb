require_relative "test_helper"
require_relative "../buzz"

class BuzzTest < Test::Unit::TestCase
  def test_process
    assert_equal "", subject("1")
    assert_equal "", subject("3")
    assert_equal "", subject("6")
    assert_equal "BUZZ", subject("5")
    assert_equal "BUZZ", subject("10")
  end

  private

  def subject(val)
    Buzz.process(val)
  end
end