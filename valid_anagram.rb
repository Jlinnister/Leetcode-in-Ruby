# https://leetcode.com/problems/valid-anagram/
#
# Given two strings s and t, write a function to determine if t is an anagram of s.
#
# For example,
# s = "anagram", t = "nagaram", return true.
# s = "rat", t = "car", return false.
#
# Note:
# You may assume the string contains only lowercase alphabets.
#
# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

def is_anagram(s, t)
  return false if s.length != t.length

  counts = Hash.new(0)
  s.chars.each do |letter|
    counts[letter] += 1
  end

  t.chars.each do |letter|
    counts[letter] -= 1
    return false if counts[letter] < 0
  end

  return true
end
