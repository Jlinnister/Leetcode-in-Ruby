# https://leetcode.com/problems/sum-of-two-integers/
#
# Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
#
# Example:
# Given a = 1 and b = 2, return 3.

def get_sum(a, b)
  a = Array(a).pack('l').unpack('l').first
  b = Array(b).pack('l').unpack('l').first
  return b == 0 ? a : get_sum(a^b, (a&b) << 1)
end
