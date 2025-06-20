/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
    const transformedArr = []
    for (let i=0;i<arr.length;i++) {
        transformedArr[i] = fn(arr[i],i); /* applies function to each element of the array */
    }
    return transformedArr; /* returns the array with transformed values */
}
