# Complete the function pangrams in the editor below. It should return the string pangram if the input string is a pangram.
# Otherwise, it should return not pangram.

def pangrams(s)
(('a'..'z').to_a - s.strip.downcase.chars.sort).empty? ? "pangram" : "not pangram"

end
