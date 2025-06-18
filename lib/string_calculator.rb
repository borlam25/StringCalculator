require 'input_parser'
require 'negative_number_validator'
require 'number_parser'

class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
  
    parser = InputParser.new(input)
    numbers = parser.parse_numbers

    numbers = NumberParser.new(numbers).parse
  
    NegativeNumberValidator.new(numbers).validate!
    
    sum = 0
    i = 0

    while i < numbers.size
      if numbers[i] == numbers[i + 1] && numbers[i] == numbers[i + 2]
        sum += numbers[i] ** 3
        i += 3
      else
        sum += numbers[i]
        i += 1
      end
    end

    sum
  end
end
