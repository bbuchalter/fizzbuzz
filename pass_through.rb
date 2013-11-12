class PassThrough
  def self.process(val)
    val
  end

  def self.processable?(val)
    true
  end
end