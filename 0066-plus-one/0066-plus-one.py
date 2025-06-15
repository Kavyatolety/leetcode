class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        for i in range(len(digits)-1,-1,-1): # Start Iterating from right to left
            # Case 1 -> [1,2,8]
            if digits[i]+1 != 10: # 8+1 != 10, 2+1 != 3, 1+1!= 2 etc
                digits[i] += 1
                return digits

            # Case 2 -> [1,2,9] for ex: 9+1 == 10 so set to 0
            digits[i] = 0

            # Case 3 -> [9,9] is [0,0] 
            if i == 0: 
                return [1] + digits # returns [1,0,0]

        
        