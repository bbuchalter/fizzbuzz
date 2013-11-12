class FizBuzzRunner

  def initialize(range: range, processors: processors, default_processor: default_processor)
    @range = range
    @processors = processors
    @default_processor = default_processor
  end

  def as_string
    as_array.join(" ")
  end

  def as_array
    range.collect { |i| results_from(applicable_processors(i), i) }
  end

  private

  attr_reader :range, :processors, :default_processor

  def results_from(these_processors, value)
    results = these_processors.collect { |p| p.process(value.to_s) }
    results.join("")
  end

  def applicable_processors(value)
    applicable_processors = processors.select { |p| p.processable?(value) }
    if applicable_processors.length == 0
      applicable_processors << default_processor
    end
    applicable_processors
  end
end