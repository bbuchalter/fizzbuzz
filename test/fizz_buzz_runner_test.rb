require_relative "test_helper"
require_relative "../fizz_buzz_runner"
require_relative "../fizz"
require_relative "../buzz"
require_relative "../pass_through"

class FizzBuzzTest < Test::Unit::TestCase
  def test_as_array
    assert_equal "1", subject.as_array[0]
    assert_equal "FIZZ", subject.as_array[2]
    assert_equal "BUZZ", subject.as_array[4]
    assert_equal "FIZZBUZZ", subject.as_array[14]
  end

  def test_as_string
    assert_equal expected_fizz_buzz_string, subject.as_string
  end

  private

  def subject
    FizBuzzRunner.new(range: range, processors: processors, default_processor: default_processor)
  end

  def range
    (1..100)
  end

  def processors
    [Fizz, Buzz]
  end

  def default_processor
    PassThrough
  end

  def expected_fizz_buzz_string
    "1 2 FIZZ 4 BUZZ FIZZ 7 8 FIZZ BUZZ 11 FIZZ 13 14 FIZZBUZZ 16 17 FIZZ 19 BUZZ FIZZ 22 23 FIZZ BUZZ 26 FIZZ 28 29 FIZZBUZZ 31 32 FIZZ 34 BUZZ FIZZ 37 38 FIZZ BUZZ 41 FIZZ 43 44 FIZZBUZZ 46 47 FIZZ 49 BUZZ FIZZ 52 53 FIZZ BUZZ 56 FIZZ 58 59 FIZZBUZZ 61 62 FIZZ 64 BUZZ FIZZ 67 68 FIZZ BUZZ 71 FIZZ 73 74 FIZZBUZZ 76 77 FIZZ 79 BUZZ FIZZ 82 83 FIZZ BUZZ 86 FIZZ 88 89 FIZZBUZZ 91 92 FIZZ 94 BUZZ FIZZ 97 98 FIZZ BUZZ"
  end
end