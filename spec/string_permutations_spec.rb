# frozen_string_literal: true

RSpec.describe 'string permutations' do
  {
    'a' => ['a'],
    'ab' => ['ab', 'ba'],
    'abc' => ['abc', 'acb', 'bac', 'bca', 'cab', 'cba'],
    'abcd' => %w[abcd abdc acbd acdb adbc adcb bacd badc bcad bcda bdac bdca
                cabd cadb cbad cbda cdab cdba dabc dacb dbac dbca dcab dcba]
  }.each do |input_string, expected_permutations|
    context "when input string \"#{input_string}\"" do
      it "returns the permutations #{expected_permutations}" do
        expect(string_permutations(input_string)).to eq(expected_permutations)
      end
    end
  end
end
