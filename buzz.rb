class Buzz
  def self.process(val)
    processable?(val) ? "BUZZ" : ""
  end

  def self.processable?(val)
    (val.to_i % 5) == 0
  end
end