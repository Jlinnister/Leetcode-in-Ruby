# https://leetcode.com/problems/intersection-of-two-arrays/
#
# Given two arrays, write a function to compute their intersection.
#
# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
#
# Note:
# Each element in the result must be unique.
# The result can be in any order.

def intersection(nums1, nums2)
  (nums1 & nums2).uniq
end
