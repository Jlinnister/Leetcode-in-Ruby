# https://leetcode.com/problems/majority-element/
#
# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
#
# You may assume that the array is non-empty and the majority element always exist in the array.

def majority_element(nums)
  counts = Hash.new(0)
  nums.each do |num|
    counts[num] += 1
  end
  counts.max_by{ |num,count| count }[0]
end
