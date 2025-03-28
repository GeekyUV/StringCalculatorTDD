require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    let(:empty_string) { "" }
    let(:single_number) { "5" }
    let(:two_numbers) { "2,3" }
    let(:comma_separated_numbers) { "1,2,3,4,5" }
    let(:newlines_and_commas) { "1\n2,3" }
    let(:custom_delimiter) { "//;\n1;2" }
    let(:negative_number) { "-5" }
    let(:negative_numbers) { "1,2,-3,-4,-5" }
    let(:ignore_numbers_larger_than_1000) { "2,1002" }
    let(:custom_delimiter_any_length) { "//[***]\n1***2***3" }
    let(:multiple_custom_delimiters) { "//[*][%]\n1*2%3" }
    let(:multiple_custom_delimiters_longer_than_one_char) { "//[**][%%]\n1**2%%3" }
    let(:many_numbers_custom_delimiter) { "//;\n1;2;3;4;5" }
    let(:custom_delimiter_special_characters) { "//[!@#]\n1!@#2!@#3" }
    let(:multiple_custom_delimiters_any_length) { "//[**][%%][$$$]\n1**2%%3$$$4" }
    let(:custom_delimiter_spaces) { "//[ ]\n1 2 3 4 5" }

    context "with empty string" do
      it "returns 0" do
        expect(StringCalculator.add(empty_string)).to eq(0)
      end
    end

    context "with single number" do
      it "returns the number itself" do
        expect(StringCalculator.add(single_number)).to eq(5)
      end
    end

    context "with two numbers separated by comma" do
      it "returns the sum of two numbers" do
        expect(StringCalculator.add(two_numbers)).to eq(5)
      end
    end

    context "with numbers separated by commas" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(comma_separated_numbers)).to eq(15)
      end
    end

    context "with numbers separated by newlines and commas" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(newlines_and_commas)).to eq(6)
      end
    end

    context "with custom delimiter" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(custom_delimiter)).to eq(3)
      end
    end

    context "with a single negative number" do
      it "raises an exception with the negative number mentioned in the error message" do
        expect { StringCalculator.add(negative_number) }.to raise_error("Negatives not allowed: -5")
      end
    end

    context "with negative numbers" do
      it "raises an exception with negative numbers mentioned in the error message" do
        expect { StringCalculator.add(negative_numbers) }.to raise_error("Negatives not allowed: -3, -4, -5")
      end
    end

    context "ignoring numbers larger than 1000" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(ignore_numbers_larger_than_1000)).to eq(2)
      end
    end

    context "with custom delimiter of any length" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(custom_delimiter_any_length)).to eq(6)
      end
    end

    context "with multiple custom delimiters" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(multiple_custom_delimiters)).to eq(6)
      end
    end

    context "with multiple custom delimiters with length longer than one char" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(multiple_custom_delimiters_longer_than_one_char)).to eq(6)
      end
    end

    context "with many numbers separated by custom delimiter" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(many_numbers_custom_delimiter)).to eq(15)
      end
    end

    context "with custom delimiter containing special characters" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(custom_delimiter_special_characters)).to eq(6)
      end
    end

    context "with multiple custom delimiters of any length" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(multiple_custom_delimiters_any_length)).to eq(10)
      end
    end

    context "with custom delimiter containing spaces" do
      it "returns the sum of numbers" do
        expect(StringCalculator.add(custom_delimiter_spaces)).to eq(15)
      end
    end
  end
end
