# https://leetcode.com/problems/add-two-numbers/
#
# You are given two linked lists representing two non-negative numbers.
# The digits are stored in reverse order and each of their nodes contain a single digit.
# Add the two numbers and return it as a linked list.
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

def add_two_numbers(l1, l2)
  l3 = nil
  carry = 0
  last_node = nil
  while l1 || l2 || carry == 1
    sum = 0
    unless l1.nil?
      sum += l1.val
      l1 = l1.next
    end

    unless l2.nil?
        sum += l2.val
        l2 = l2.next
    end

    sum += carry
    digit = sum % 10
    carry = sum / 10

    if l3.nil?
      l3 = ListNode.new(digit)
      last_node = l3
    else
      last_node.next = ListNode.new(digit)
      last_node = last_node.next
    end
  end
  l3
end
