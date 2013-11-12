require_relative "test_helper"
require_relative "../pass_through"

class PassThroughTest < Test::Unit::TestCase
  def test_process
    assert_equal "1", subject.process("1")
    assert_equal "3", subject.process("3")
    assert_equal "dodo", subject.process("dodo")
  end

  def test_processable
    assert subject.processable?("1")
    assert subject.processable?("3")
    assert subject.processable?("dodo")
  end

  private

  def subject
    PassThrough
  end
end