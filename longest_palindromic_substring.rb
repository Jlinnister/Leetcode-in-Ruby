# https://leetcode.com/problems/longest-palindromic-substring/
#
# Given a string S, find the longest palindromic substring in S.
# You may assume that the maximum length of S is 1000, and there exists one unique longest palindromic substring.

def process_string(str)
  length = str.length
  result = '^'
  return '^$' if length == 0
  0.upto(length) do |idx|
    result += '#' + str[idx,1]
  end
  result += '$'
  result
end

def longest_palindrome(str)
  byebug
  processed_string = process_string(str)
  length = processed_string.length
  count = Array.new(length)
  center, edge = 0, 0
  1.upto(length - 1) do |idx|
    opposite_idx = 2 * center - idx
    count[idx] = (edge > idx) ? [edge - idx, count[opposite_idx]].min : 0
    while (processed_string[idx + 1 + count[idx]]) == processed_string[idx-1-count[idx]]
      count[idx] += 1
    end

    if (idx + count[idx] > edge)
      center = idx
      edge = idx + count[idx]
    end
  end

  longest = 0
  center_idx = 0
  1.upto(length-1) do |idx|
    if (count[idx] > longest)
      longest = count[idx]
      center_idx = idx
    end
  end

  str[(center_idx - 1 - longest)/2, longest]
end
