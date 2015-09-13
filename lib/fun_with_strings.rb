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
    # returns a nested array of anagrams.
    words = self.downcase.split
    anagrams_hash = {}
    words.each do |word|
      if anagrams_hash.key?(word.chars.sort.join)
        anagrams_hash[word.chars.sort.join].push(word)
      else
        anagrams_hash[word.chars.sort.join] = [word]
      end
    end
    anagrams = anagrams_hash.values
    return anagrams
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
