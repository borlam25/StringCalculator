class NumberParser
  def initialize(numbers)
    @numbers = numbers
  end

  def parse
    @numbers.map do |number|
      if number.include?("*")
        number.split("*").map(&:to_i).reduce(1, :*)
      else
        number.to_i
      end
    end
  end
end
