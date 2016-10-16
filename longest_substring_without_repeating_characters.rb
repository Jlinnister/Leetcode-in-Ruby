# https://leetcode.com/problems/longest-substring-without-repeating-characters/
#
# Given a string, find the length of the longest substring without repeating characters.
#
# Examples:
#
# Given "abcabcbb", the answer is "abc", which the length is 3.
#
# Given "bbbbb", the answer is "b", with the length of 1.
#
# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

def length_of_longest_substring(s)
  count = 0
  longest = 0
  seen = []
  0.upto(s.length - 1).each do |idx|
    if seen.include?(s[idx])
      remove_el_idx = seen.index(s[idx])
      seen = seen[remove_el_idx + 1..-1]
      seen.push(s[idx])
      count = seen.length
    else
      seen.push(s[idx])
      count += 1
      longest = [longest, count].max
    end
  end
  longest
end
