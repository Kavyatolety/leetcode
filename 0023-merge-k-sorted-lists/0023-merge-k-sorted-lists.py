# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
        heap = []
        # push the head of the each list into the heap using their value and index
        for i, node in enumerate(lists):
            if node:
                heapq.heappush(heap,(node.val, i, node))
                # pop from the heap and build the result list
        dummy = ListNode(0)
        current = dummy
        while heap:
            val, i, node = heapq.heappop(heap)
            current.next = node
            current = current.next
            if node.next:
                heapq.heappush(heap, (node.next.val, i, node.next))
        return dummy.next
        