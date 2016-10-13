# https://leetcode.com/problems/first-unique-character-in-a-string/
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

def first_uniq_char(s)
  counts = Hash.new(0)
  s.chars.each do |letter|
    counts[letter] += 1
  end

  s.chars.each_with_index do |letter,idx|
    return idx if counts[letter] == 1
  end
  
  -1
end
