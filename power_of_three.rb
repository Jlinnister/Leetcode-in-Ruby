# https://leetcode.com/problems/power-of-three/
#
# Given an integer, write a function to determine if it is a power of three.
#
# Follow up:
# Could you do it without using any loop / recursion?

def is_power_of_three(n)
  return false if n == 0
  n == 3 ** (Math.log(n.abs) / Math.log(3)).round
end
