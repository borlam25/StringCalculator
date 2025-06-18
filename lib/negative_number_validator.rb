class NegativeNumberValidator
  def initialize(numbers)
    @numbers = numbers
  end

  def validate!
    negatives = @numbers.select { |n| n < 0 }
    raise ArgumentError, "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
