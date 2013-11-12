require_relative "test_helper"
require_relative "../pass_through"

class PassThroughTest < Test::Unit::TestCase
  def test_process
    assert_equal "1", subject("1")
    assert_equal "3", subject("3")
    assert_equal "dodo", subject("dodo")
  end

  private

  def subject(val)
    PassThrough.process(val)
  end
end