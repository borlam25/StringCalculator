require 'input_parser'

class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
  
    parser = InputParser.new(input)
    numbers = parser.parse_numbers

    numbers = numbers.map do |number|
      if number.include?("*")
        number.split("*").map(&:to_i).reduce(1, :*)
      else
        number.to_i
      end

    end
  
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise ArgumentError, "negative numbers are not allowed: #{negatives.join(', ')}"
    end
  
    numbers.sum
  end
end
