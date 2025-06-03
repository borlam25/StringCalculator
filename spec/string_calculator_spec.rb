require "string_calculator"

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single input" do
      expect(StringCalculator.add("4")).to eq(4)
    end

    it "returns the sum of two comma separated numbers" do
      expect(StringCalculator.add("1, 2")).to eq(3)
    end

    it "sums more than two numbers" do
      expect(StringCalculator.add("1, 2, 3, 4")).to eq(10)
    end

    it "supports newline as delimiter" do
      expect(StringCalculator.add("1\n2, 3")).to eq(6)
    end    
  end
end
