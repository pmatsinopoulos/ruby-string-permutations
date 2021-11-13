def string_permutations(string)
  return [string[0]] if string.length == 1
  return [string, string.reverse] if string.length == 2

  result = []
  string.each_char.with_index do |char, index|
    left_part = index.zero? ? '' : string[0..index - 1]
    right_part = string[(index + 1)..]

    rest_of_string = "#{left_part}#{right_part}"
    result += string_permutations(rest_of_string).map { |sp| "#{char}#{sp}" }
  end
  result.flatten
end
