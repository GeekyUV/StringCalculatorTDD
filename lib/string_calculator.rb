module StringCalculator
  def self.add(input)
    return 0 if input.empty?

    delimiters = [",", "\n"]

    if input.start_with?("//")
      custom_delimiter, input = input.split("\n", 2)
      custom_delimiter.slice!("//")
      delimiters = custom_delimiter.split("][").map { |d| d.tr("[]", "") }
    end

    numbers = input.split(Regexp.union(delimiters)).map(&:to_i)

    negatives = numbers.select { |num| num.negative? }
    if negatives.any?
      raise "Negatives not allowed: #{negatives.join(", ")}"
    end

    numbers.reject! { |num| num > 1000 }

    numbers.sum
  end
end
