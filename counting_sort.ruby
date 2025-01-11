# Given a list of integers, count and return the number of times each value appears as an array of integers.

def countingSort(arr)
  # Write your code here
  result = [0]*100
  arr.each do |number|
      result[number] += 1
  end
  result
end
