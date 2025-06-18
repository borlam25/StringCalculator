class InputParser

  def initialize(input)
    @input = input.strip
    @delimiter = /,|\n/
  end

  def parse_numbers
    if @input.start_with?("//")
      parts = @input.split("\n", 2)
      @delimiter = Regexp.escape(parts[0][2..])
      @input = parts[1]
    end
  
    numbers = @input.split(/#{@delimiter}|[\n]/)
  end
end