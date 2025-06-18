class NumberCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def compute
    sum = 0
    i = 0

    while i < @numbers.size
      if @numbers[i] == @numbers[i + 1] && @numbers[i] == @numbers[i + 2]
        sum += @numbers[i]**3
        i += 3
      else
        sum += @numbers[i]
        i += 1
      end
    end

    sum
  end
end
