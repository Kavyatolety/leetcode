# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        total_nums = len(nums)
        if not total_nums:
            return None
        root_node = total_nums // 2
        return TreeNode(
            nums[root_node],
            self.sortedArrayToBST(nums[:root_node]), self.sortedArrayToBST(nums[root_node+1:])
        )
        