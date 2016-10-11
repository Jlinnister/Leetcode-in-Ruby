# https://leetcode.com/problems/single-number/
#
# Given an array of integers, every element appears twice except for one. Find that single one.
#
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

def single_number(nums)
    counts = Hash.new(0)
    nums.each { |num| counts[num] += 1 }
    counts.key(1)
end
