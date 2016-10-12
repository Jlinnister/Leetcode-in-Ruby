
# https://leetcode.com/problems/move-zeroes/
#
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
#
# For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
#
# Note:
# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.

def move_zeroes(nums)
  pointer = 0
  pointer.upto(nums.length - 1) do |idx|
    if nums[idx] != 0
      nums[pointer] = nums[idx]
      pointer += 1
    end
  end

  pointer.upto(nums.length - 1) do |idx|
    nums[idx] = 0
  end
end
