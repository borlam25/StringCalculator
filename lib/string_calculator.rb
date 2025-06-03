class StringCalculator
  def self.add(input)
    return 0 if input.strip.empty?
  
    input = input.gsub("\n", ",")
    numbers = input.split(",").map(&:to_i)
    numbers.sum
  end  
end
