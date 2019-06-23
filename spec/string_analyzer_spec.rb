require 'string_analyzer'

describe StringAnalyzer do
   context "With valid input" do

      it "should detect when a string contains vowels" do
         sa = StringAnalyzer.new
         test_string = 'uuu'
         expect(sa.has_vowels? test_string).to be true
      end

      it "should detect when a string doesn't contain vowels" do
         sa = StringAnalyzer.new
         test_string = 'bcdfg'
         expect(sa.has_vowels? test_string).to be false
      end

      it "should detect when there is at least one vowel amongst some consonants" do
          sa = StringAnalyzer.new
          test_string = 'abcefg'
          expect(sa.has_vowels? test_string).to be true
      end
   end
end

=begin
Potential test cases to test for:
Input string	Description	Expected result with has_vowels?
‘aaa’, ‘eee’, ‘iii’, ‘o’	Only one vowel and no other letters.	true
‘abcefg’	‘At least one vowel and some consonants’	true
‘mnklp’	Only consonants.	false
‘’	Empty string (no letters)	false
‘abcde55345&??’	Vowels, consonants, numbers and punctuation characters.	true
‘423432%%%^&’	Numbers and punctuation characters only.	false
‘AEIOU’	Upper case vowels only.	true
‘AeiOuuuA’	Upper case and lower vowels only.	true
‘AbCdEfghI’	Upper and lower case vowels and consonants.	true
‘BCDFG’	Upper case consonants only.	false
‘ ‘	Whitespace characters only.	false
=end
