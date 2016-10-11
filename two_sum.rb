# https://leetcode.com/problems/two-sum/
#
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution.
#
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num,idx|
    hash[num] = idx
  end

  nums.each_with_index do |num,idx|
    complement = target - num
    if (hash.keys.include?(complement) && hash[complement] != idx)
      return [hash[complement], idx]
    end
  end
end
