# https://leetcode.com/problems/invert-binary-tree/
#
# Invert a binary tree.
#
#      4
#    /   \
#   2     7
#  / \   / \
# 1   3 6   9
# to
#      4
#    /   \
#   7     2
#  / \   / \
# 9   6 3   1

def invert_tree(root)
  return nil if root.nil?

  invert_tree(root.left)
  invert_tree(root.right)

  temp_node = root.left
  root.left = root.right
  root.right = temp_node
  root
end
