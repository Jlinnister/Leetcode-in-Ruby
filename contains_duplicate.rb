# https://leetcode.com/problems/contains-duplicate/
#
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array,
# and it should return false if every element is distinct.

def contains_duplicate(nums)
  count = Hash.new(0)
  nums.each do |num|
    count[num] += 1
    return true if count[num] == 2
  end
  return false
end
