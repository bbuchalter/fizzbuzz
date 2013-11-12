class Fizz
  def self.process(val)
    processable?(val) ? "FIZZ" : ""
  end

  def self.processable?(val)
    (val.to_i % 3) == 0
  end
end