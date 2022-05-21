# using regex
module Isogram
REPEATING_LETTERS = /(.)(.*)(\1)/m

  def self.is_isogram(string)
    string
      .downcase
      .scan(REPEATING_LETTERS) # returns an array of repeated letter
      .empty?
  end
end

# using each_char
def is_isogram(string)
  uniq_letters = []
  
  string.downcase.each_char do |letter|
    return false if uniq_letters.include?(letter)
    uniq_letters << letter
  end
  
  true
end
