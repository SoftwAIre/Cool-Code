
def diff_big_2(arr)
  i = 0
  first = nil
  second = nil
  while i < arr.length
    if first.nil? || first < arr[i]
      second = first
      first = arr[i]
    elsif second.nil? || second < arr[i]
      second = arr[i]
    end
    i = i + 1
  end
  return first - second
end
