require_relative "test_helper"
require_relative "../fizz"

class FizzTest < Test::Unit::TestCase
  def test_process
    assert_equal "", subject.process("1")
    assert_equal "FIZZ", subject.process("3")
    assert_equal "", subject.process("5")
    assert_equal "FIZZ", subject.process("6")
    assert_equal "", subject.process("10")
  end

  def test_processable?
    assert !subject.processable?("1")
    assert subject.processable?("3")
    assert !subject.processable?("5")
    assert subject.processable?("6")
    assert !subject.processable?("10")
  end

  private

  def subject
    Fizz
  end
end