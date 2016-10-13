# https://leetcode.com/problems/longest-palindrome/
#
# Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
#
# This is case sensitive, for example "Aa" is not considered a palindrome here.
#
# Note:
# Assume the length of given string will not exceed 1,010.
#
# Example:
#
# Input:
# "abccccdd"
#
# Output:
# 7
#
# Explanation:
# One longest palindrome that can be built is "dccaccd", whose length is 7.

def longest_palindrome(s)
  counts = Hash.new(0)
  longest = 0

  s.chars.each do |letter|
    counts[letter] += 1
  end

  counts.select { |letter, count| count >= 2 }.each do |letter,count|
    longest += (count / 2) * 2
    counts[letter] -= (count / 2) * 2
  end

  if longest.even?
    longest += 1 if counts.values.any? { |count| count > 0 }
  end
  
  longest
end
