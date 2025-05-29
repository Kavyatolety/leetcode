class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        res = 0
        max_i = 0
        for i in nums:
            if i == 1:
                res = res+1
                max_i = max(max_i,res)
            else:
                res = 0
        return max_i
        
                
    
            
        