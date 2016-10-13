# https://leetcode.com/problems/ransom-note/
#
# Given  an arbitrary  ransom  note  string and another string containing letters from  all the magazines, 
# write a function that will return true if the ransom  note can be constructed from the magazines ; otherwise, it will return false.  
#
# Each letter  in  the  magazine string can  only be  used once  in  your ransom  note.
#
# Note:
# You may assume that both strings contain only lowercase letters.
#
# canConstruct("a", "b") -> false
# canConstruct("aa", "ab") -> false
# canConstruct("aa", "aab") -> true

def can_construct(ransom_note, magazine)
  counts = Hash.new(0)
  magazine.chars.each do |letter|
    counts[letter] += 1
  end

  ransom_note.chars.each do |letter|
    counts[letter] -= 1
    return false if counts[letter] < 0
  end

  true
end
