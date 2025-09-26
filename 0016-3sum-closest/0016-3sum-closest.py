class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        nums.sort()
        closest_sum = nums[0] + nums[1] +nums[2]
        for i in range(len(nums)-2):
            left = i+1
            right = len(nums) - 1
            while left < right:
                current_sum = nums[i] + nums[left] + nums[right]
                if abs(current_sum-target) < abs(closest_sum-target):
                    closest_sum = current_sum
                if current_sum < target:
                    left = left+1
                elif current_sum > target:
                    right=right-1
                else:
                    return target
        return closest_sum



        