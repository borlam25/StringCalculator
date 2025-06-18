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

    it "supports custom delimiter with // syntax" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for a negative number" do
      expect { StringCalculator.add("1,-2") }.to raise_error(ArgumentError, "negative numbers are not allowed: -2")
    end

    it "lists all negative numbers in the error message" do
      expect {
        StringCalculator.add("2,-3,-5,4")
      }.to raise_error(ArgumentError, "negative numbers are not allowed: -3, -5")
    end

    it "multiplies the numbers when a * is found" do
      expect(StringCalculator.add("2*13, 1")).to eq(27)
    end
  end
end
