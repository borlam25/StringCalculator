require 'input_parser'
require 'negative_number_validator'
require 'number_parser'
require 'number_calculator'

class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
  
    parser = InputParser.new(input)
    numbers = parser.parse_numbers

    numbers = NumberParser.new(numbers).parse
  
    NegativeNumberValidator.new(numbers).validate!
    
    NumberCalculator.new(numbers).compute
  end
end
