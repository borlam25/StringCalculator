# String Calculator - TDD

A simple string calculator implementation with Ruby and RSpec, developed using TDD.

---

## Problem Statement

Write a method `add(string numbers)` that:
- Returns `0` for an empty string
- Returns the number for a single number
- Sums numbers separated by commas or newlines
- Supports custom delimiters like `"//;\n1;2"` (returns 3)
- Raises an exception for negative numbers, listing all of them

---

## Tools & Tech

- Ruby
- RSpec (Test Framework)
- Git (Version Control)

---

## How to Run

### 1. Clone the repository
```bash
git clone https://github.com/borlam25/StringCalculator.git
cd string_calculator
```

### 2. Install dependencies
```
bundle install
```

### 3. Run Specs
```
bundle exec rspec
```

---
## Test Cases Covered

| Input        | Output | Notes                   |
| ------------ | ------ | ----------------------- |
| `""`         | `0`    | Empty input             |
| `"1"`        | `1`    | Single number           |
| `"1,2"`      | `3`    | Two numbers             |
| `"1\n2,3"`   | `6`    | Newlines as delimiters  |
| `"//;\n1;2"` | `3`    | Custom delimiter        |
| `"1,-2"`     | Error  | Shows `-2` in error     |
| `"1,-2,-4"`  | Error  | Shows `-2, -4` in error |
| "`2,2,2,1"`	 | `9`    |	Cube logic: 2^3 = 8 + 1 |

---

## This project uses SOLID principles to ensure clean, maintainable, and testable code:

### S – Single Responsibility Principle (SRP)
Each class has one focused responsibility:

InputParser: Extracts numbers and delimiters from the raw input

NumberParser: Converts tokens to integers, including *-based expressions

NegativeNumberValidator: Detects and handles negative numbers

NumberCalculator: Computes the final sum with custom cube logic

### O – Open/Closed Principle
The design is open for extension, but closed for modification — new features (e.g., supporting division or powers) can be added by extending specific classes without changing core logic.

### Benefits:
Easy to read and understand

Easy to test each part in isolation

Scalable for future features or rule changes



