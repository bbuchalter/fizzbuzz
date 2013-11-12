class Fizz
  def self.process(val)
    (val.to_i % 3)==0 ? "FIZZ" : ""
  end
end