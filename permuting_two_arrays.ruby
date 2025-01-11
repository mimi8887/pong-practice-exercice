# Complete the twoArrays function in the editor below. It should return a string, either YES or NO.

# twoArrays has the following parameter(s):

# int k: an integer
# int A[n]: an array of integers
# int B[n]: an array of integers

def twoArrays(k, a, b)
  # Write your code here
array_a = a.sort
array_b = b.sort.reverse
result = []
array_a.each_with_index do |number, index|
  result << number + array_b[index]
end
result.all?{|x| x >= k } ? "YES" : "NO"
end
