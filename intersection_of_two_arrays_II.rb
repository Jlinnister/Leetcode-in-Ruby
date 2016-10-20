# https://leetcode.com/problems/intersection-of-two-arrays-ii/
#
# Given two arrays, write a function to compute their intersection.
#
# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
#
# Note:
# Each element in the result should appear as many times as it shows in both arrays.
# The result can be in any order.
# Follow up:
# What if the given array is already sorted? How would you optimize your algorithm?
# What if nums1's size is small compared to nums2's size? Which algorithm is better?
# What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

def intersect(nums1, nums2)
  nums1_count, nums2_count = Hash.new(0), Hash.new(0)
  nums1.each { |num| nums1_count[num] += 1 }
  nums2.each { |num| nums2_count[num] += 1 }
  nums1_count.flat_map { |num, count| [num] * [ nums2_count[num] || 0, count ].min }
end
