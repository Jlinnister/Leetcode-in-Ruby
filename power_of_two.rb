# https://leetcode.com/problems/power-of-two/
#
# Given an integer, write a function to determine if it is a power of two.

def is_power_of_two(n)
  return false if n == 0
  n == 2 ** (Math.log(n.abs) / Math.log(2)).round
end
