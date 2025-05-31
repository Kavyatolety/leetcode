class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        even_digit_count = 0 
        for num in nums:
            leng = len(str(num))
            if leng % 2 == 0:
                even_digit_count += 1 
        return even_digit_count      
        