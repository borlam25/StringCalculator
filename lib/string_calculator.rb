class StringCalculator
  def self.add(input)
    return 0 if input == ""
    return input.to_i if !input.include?(",")
  
    input.split(",").map(&:to_i).sum
  end  
end
