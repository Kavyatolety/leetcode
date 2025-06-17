class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        index = 0
        for n in nums:
            index^=n
        return index
        