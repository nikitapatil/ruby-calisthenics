module FunWithStrings
  def palindrome?
    # returns true if the string is a palindrome.
    self.downcase.gsub(/[^a-z]/, '') == self.reverse.downcase.gsub(/[^a-z]/, '')
  end
  def count_words
    # returns a hash of words in a string and the number of times they occur.
    #word_hash = {"Hello"=>1, "world"=>2}
    word_array = self.downcase.gsub(/[^a-z ]/, '').split
    word_hash = {}
    word_array.each do |word|
      if word_hash.key?(word)
        word_hash[word] += 1
      else
        word_hash[word] = 1
      end
    end
    return word_hash
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
