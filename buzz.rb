class Buzz
  def self.process(val)
    (val.to_i%5 == 0) ? "BUZZ" : ""
  end
end