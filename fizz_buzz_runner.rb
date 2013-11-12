class FizBuzzRunner

  def initialize(range: range, processors: processors, default_processor: default_processor)
    @range = range
    @processors = processors
    @default_processor = default_processor
  end

  def as_array
    output = []
    range.each do |i|
      val = ""
      val = run_processors(i, val)
      val = use_fall_back_if_no_val_set(i, val)
      output << val
    end
    output
  end

  def as_string
    as_array.join(" ")
  end

  private

  attr_reader :range, :processors, :default_processor

  def run_processors(i, val)
    processors.each do |processor|
      val += processor.process(i.to_s)
    end
    val
  end


  def use_fall_back_if_no_val_set(i, val)
    val == '' ? default_processor.process(i.to_s) : val
  end
end