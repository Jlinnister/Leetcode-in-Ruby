# https://leetcode.com/problems/add-strings/
#
# Given two non-negative numbers num1 and num2 represented as string, return the sum of num1 and num2.
#
# Note:
#
# The length of both num1 and num2 is < 5100.
# Both num1 and num2 contains only digits 0-9.
# Both num1 and num2 does not contain any leading zero.
# You must not use any built-in BigInteger library or convert the inputs to integer directly.

def add_strings(num1, num2)
  result = 0
  num1.length.times { |i| result += (num1[i].ord - 48) * 10 ** (num1.length - i - 1) }
  num2.length.times { |i| result += (num2[i].ord - 48) * 10 ** (num2.length - i - 1) }
  result.to_s
end
