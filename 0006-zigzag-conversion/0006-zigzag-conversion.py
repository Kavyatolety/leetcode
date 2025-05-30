class Solution:
    def convert(self, s: str, numRows: int) -> str:
        if numRows == 1 or numRows >= len(s):
            return s

        res = [""] * numRows
        current_row = 0
        going_Down = False

        for c in s:
            res[current_row] += c
            if current_row == 0 or current_row == numRows - 1:
                going_Down = not going_Down
            current_row += 1 if going_Down else -1
            
        return ''.join(res)
            

        