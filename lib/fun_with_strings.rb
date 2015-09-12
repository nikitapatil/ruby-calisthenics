module FunWithStrings
  def palindrome?
    # returns true if the string is a palindrome.
    self.downcase.gsub(/[^a-z]/, '') == self.reverse.downcase.gsub(/[^a-z]/, '')
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
