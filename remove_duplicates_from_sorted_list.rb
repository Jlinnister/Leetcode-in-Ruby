# https://leetcode.com/problems/remove-duplicates-from-sorted-list/
#
# Given a sorted linked list, delete all duplicates such that each element appear only once.
#
# For example,
# Given 1->1->2, return 1->2.
# Given 1->1->2->3->3, return 1->2->3.

def delete_duplicates(head)
  current = head
  while current 
    next_node = current.next
    while next_node && next_node.val == current.val
      next_node = next_node.next
    end
    current.next = next_node
    current = current.next
  end
  head
end
